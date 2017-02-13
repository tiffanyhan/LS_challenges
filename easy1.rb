module Delegation
  def delegate(task)
    puts "I delegate this task: #{task}"
  end
end

class Employee
  attr_reader :name, :serial_number
  attr_accessor :status, :vacation_days, :work_space

  def initialize(name, serial_number)
    @name = name
    @serial_number = serial_number
  end

  def name
    @name
  end
end

class Regular < Employee
  attr_reader

  def initialize(name, serial_number)
    super(name, serial_number)
    self.status = 'full-time'
    self.vacation_days = 10
    self.work_space = 'cubicle'
  end
end

class PartTimer < Employee
  def initialize(name, serial_number)
    super(name, serial_number)
    self.status = 'part-time'
    self.vacation_days = nil
    self.work_space = 'open'
  end
end

class Executive < Regular
  include Delegation

  def initialize(name, serial_number)
    super(name, serial_number)
    self.vacation_days = 20
    self.work_space = 'corner'
  end

  def name
    "Exe #{@name}"
  end
end

class Manager < Regular
  include Delegation

  def initialize(name, serial_number)
    super(name, serial_number)
    self.vacation_days = 14
    self.work_space = 'private'
  end

  def name
    "Mgr #{@name}"
  end
end

