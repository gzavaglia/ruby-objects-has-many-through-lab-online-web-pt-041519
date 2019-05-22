require_relative "../lib/doctor.rb"
require_relative "../lib/patient.rb"

class Appointment
  attr_accessor :date, :doctor, :appointment
  @@appts = []
  def initialize(name)
    @date = date
    @@appts << self
  end
end