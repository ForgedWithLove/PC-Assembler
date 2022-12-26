class HardwareController < ApplicationController
  def cpu
    @cpus = Cpu.all
  end

  def gpu
    @gpus = Videocard.all
  end

  def motherboard
    @mbs = Motherboard.all
  end

  def memory
    @memories = Memory.all
  end

  def psu
    @psus = Psu.all
  end

  def disk
    @disks = Disk.all
  end

  def cooler
    @coolers = Cooler.all
  end

  def cpu_params
    params.permit(:manufact, :socket, :model, :core_num, :tdp, :price)
  end

  def create_cpu
    unless params[:manufact].blank? || params[:socket].blank? || params[:model].blank? || params[:core_num].to_i < 1 || params[:tdp].to_i < 1 || params[:price].to_i < 1
      Cpu.create(cpu_params)
      redirect_to cpu_mod_path
    end
  end

  def delete_cpu
    @cpu = Cpu.find(params[:id])
    @cpu.destroy
    redirect_to cpu_mod_path
  end

  def gpu_params
    params.permit(:manufact, :model, :gen, :volume, :price)
  end

  def create_gpu
    unless params[:manufact].blank? || params[:model].blank? || params[:gen].to_i < 1 || params[:volume].to_i < 1 || params[:price].to_i < 1
      Videocard.create(gpu_params)
      redirect_to gpu_mod_path
    end
  end

  def delete_gpu
    @gpu = Videocard.find(params[:id])
    @gpu.destroy
    redirect_to gpu_mod_path
  end

  def motherboard_params
    params.permit(:name, :socket, :chipset, :price, :memory_slots)
  end

  def create_motherboard
    unless params[:name].blank? || params[:socket].blank? || params[:chipset].blank? || params[:price].to_i < 1 || params[:memory_slots].to_i < 1
      Motherboard.create(motherboard_params)
      redirect_to motherboard_mod_path
    end
  end

  def delete_motherboard
    @mb = Motherboard.find(params[:id])
    @mb.destroy
    redirect_to motherboard_mod_path
  end

  def memory_params
    params.permit(:volume_one, :max_freq, :price)
  end

  def create_memory
    unless params[:volume_one].to_i < 1 || params[:max_freq].to_i < 1 || params[:price].to_i < 1
      Memory.create(memory_params)
      redirect_to memory_mod_path
    end
  end

  def delete_memory
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to memory_mod_path
  end

  def psu_params
    params.permit(:wattage, :certificate, :price)
  end

  def create_psu
    unless params[:wattage].to_i < 1 || params[:certificate].blank? || params[:price].to_i < 1
      Psu.create(psu_params)
      redirect_to psu_mod_path
    end
  end

  def delete_psu
    @psu = Psu.find(params[:id])
    @psu.destroy
    redirect_to psu_mod_path
  end

  def disk_params
    params.permit(:storage_type, :volume, :price)
  end

  def create_disk
    unless params[:storage_type].blank? || params[:volume].to_i < 1 || params[:price].to_i < 1
      Disk.create(disk_params)
      redirect_to disk_mod_path
    end
  end

  def delete_disk
    @disk = Disk.find(params[:id])
    @disk.destroy
    redirect_to disk_mod_path
  end

  def cooler_params
    params.permit(:socket, :tdp, :price)
  end

  def create_cooler
    unless params[:socket].blank? || params[:tdp].to_i < 1 || params[:price].to_i < 1
      Cooler.create(cooler_params)
      redirect_to cooler_mod_path
    end
  end

  def delete_cooler
    @cooler = Cooler.find(params[:id])
    @cooler.destroy
    redirect_to cooler_mod_path
  end
end
