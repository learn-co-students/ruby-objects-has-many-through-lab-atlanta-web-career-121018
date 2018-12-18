class Appointment
  attr_accessor :patient, :date, :doctor


  @@all = []

  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end

  def self.all
    @@all
  end
end















 # class Appointment
#   attr_reader :date
#   attr_accessor :patient, :doctor
#
#   @@all = []
#
#   def initialize(date, patient, doctor)
#     @date = date
#     @patient = patient
#     @doctor = doctor
#
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
# end
