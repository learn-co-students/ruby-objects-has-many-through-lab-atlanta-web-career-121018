class Appointment
@@all = []
attr_reader :date, :patient, :doctor

def self.all
  @@all
end

def initialize(patient, date, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  self.class.all << self
end

end
