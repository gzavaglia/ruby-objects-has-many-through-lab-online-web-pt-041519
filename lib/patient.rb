require_relative "../lib/doctor.rb"
require_relative "../lib/appointment.rb"

class Patient
  attr_accessor :name, :doctor, :appointment
  @@patients = []
  def initialize(name)
    @name = name
    @@patients << self
  end
  
  def self.all 
    @@patients
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(date, self, doctor)
  end
end