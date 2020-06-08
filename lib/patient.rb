require 'pry'
class Patient 
  attr_reader :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self  
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self} 
  end 
  
  def doctors
    appointments.map do |appt| 
    binding.pry
    appt.doctor 
    end 
  end 
  
  def self.all 
    @@all 
  end 

end 