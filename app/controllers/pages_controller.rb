class PagesController < ApplicationController
  def welcome
  end

  def configuration
  end

  def observation
  end

  def creation
    cpu_id = params[:cpu]
    gpu_id = params[:gpu]
    mb_id = params[:motherboard]
    memory_id = params[:memory]
    psu_id = params[:psu]
    disk_id = params[:disk]
    cooler_id = params[:cooler]
    mem_cnt = params[:memory_number]
    if cpu_id.blank?  || gpu_id.blank? || mb_id.blank? || memory_id.blank? || psu_id.blank? || disk_id.blank? || cooler_id.blank?
      redirect_to configurator_path, notice: t(:fill_error)
    else
      cpu = Cpu.find(cpu_id)
      gpu = Videocard.find(gpu_id)
      motherboard = Motherboard.find(mb_id)
      memory = Memory.find(memory_id)
      psu = Psu.find(psu_id)
      disk = Disk.find(disk_id)
      cooler = Cooler.find(cooler_id)
      if cpu.socket != motherboard.socket || cpu.socket != cooler.socket
        redirect_to configurator_path, notice: t(:socket_error)
      elsif mem_cnt.to_i > motherboard.memory_slots
        redirect_to configurator_path, notice: t(:slots_error)
      elsif cpu.tdp > cooler.tdp + 25
        redirect_to configurator_path, notice: t(:tdp_error)
      else
        price = cpu.price + gpu.price + motherboard.price + memory.price * mem_cnt.to_i + psu.price + disk.price + cooler.price
        Computer.create(User_id: current_user.id, cpu_id: cpu_id, videocard_id: gpu_id, psu_id: psu_id, motherboard_id: mb_id, memory_id: memory_id, disk_id: disk_id, cooler_id: cooler_id, total_price: price, memory_num: mem_cnt)
        redirect_to observation_path
      end
    end
  end

  def delete_pc
    @comp = Computer.find(params[:id])
    @comp.destroy
    redirect_to observation_path
  end

  def show_pc
    @comp = Computer.find(params[:id])
    @cpu = Cpu.find_by_id(@comp.cpu_id)
    @gpu = Videocard.find_by_id(@comp.videocard_id)
    @motherboard = Motherboard.find_by_id(@comp.motherboard_id)
    @memory = Memory.find_by_id(@comp.memory_id)
    @psu = Psu.find_by_id(@comp.psu_id)
    @disk = Disk.find_by_id(@comp.disk_id)
    @cooler = Cooler.find_by_id(@comp.cooler_id)
  end

  def set_session_and_redirect
    session[:locale] = I18n.locale
    redirect_to root_path
  end

  def ru
    I18n.locale = :ru
    set_session_and_redirect
  end

  def en
    I18n.locale = :en
    set_session_and_redirect
  end

  def send_computers
    ComputerMailer.show_computer.deliver
  end

  def info_first
  end
end
