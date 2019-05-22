require_relative "../lib/patient.rb"
require_relative "../lib/appointment.rb"

class Doctor
  attr_accessor :name, :appointment, :patient
  @@doctors = []
  def initialize(name)
    @name = name
    @@doctors << self
  end
  
  def self.all 
    @@doctors
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    self.appt.last
  end
end