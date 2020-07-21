class Patient
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

def doctors
  appointments.map do |appointment|
    appointment.doctor
  end
end

end
