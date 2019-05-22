require_relative "../lib/doctor.rb"
require_relative "../lib/appointment.rb"

class Patient
  attr_accessor :name, :doctor, :appointment
  @@patients = []
  def initialize(name)
    @name = name
    @@patients << self
  end
end