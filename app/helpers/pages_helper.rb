# frozen_string_literal: true

module PagesHelper
  def cpu_array
    elem = []
    list = []
    Cpu.all.order(socket: :desc, manufact: :desc, model: :desc).each do |x|
      cpu_name = "#{x.manufact} #{x.model} (#{x.socket}, #{x.tdp} #{t(:sign_w)})"
      list.push(elem.push(cpu_name).push(x.id))
      elem = []
    end
    list
  end

  def gpu_array
    elem = []
    list = []
    Videocard.all.order(manufact: :desc, model: :desc).each do |x|
      gpu_name = "#{x.manufact} #{x.model}"
      list.push(elem.push(gpu_name).push(x.id))
      elem = []
    end
    list
  end

  def motherboard_array
    elem = []
    list = []
    Motherboard.all.order(socket: :desc, chipset: :desc).each do |x|
      mb_name = "#{x.name} (#{x.socket}, #{x.memory_slots} #{t(:slots)})"
      list.push(elem.push(mb_name).push(x.id))
      elem = []
    end
    list
  end

  def memory_array
    elem = []
    list = []
    Memory.all.order(volume_one: :desc, max_freq: :desc).each do |x|
      mem_name = "#{x.volume_one} #{t(:sign_gb)}, #{x.max_freq} #{t(:sign_mhz)}"
      list.push(elem.push(mem_name).push(x.id))
      elem = []
    end
    list
  end

  def psu_array
    elem = []
    list = []
    Psu.all.order(wattage: :desc, certificate: :desc).each do |x|
      psu_name = "#{x.wattage} #{t(:sign_w)}, #{x.certificate}"
      list.push(elem.push(psu_name).push(x.id))
      elem = []
    end
    list
  end

  def disk_array
    elem = []
    list = []
    Disk.all.order(storage_type: :desc, volume: :desc).each do |x|
      disk_name = "#{x.storage_type}, #{x.volume} #{t(:sign_tb)}"
      list.push(elem.push(disk_name).push(x.id))
      elem = []
    end
    list
  end

  def cooler_array
    elem = []
    list = []
    Cooler.all.order(socket: :desc, tdp: :desc).each do |x|
      cooler_name = "#{x.socket}, #{x.tdp} #{t(:sign_w)}"
      list.push(elem.push(cooler_name).push(x.id))
      elem = []
    end
    list
  end
end
