class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    d = DateTime.parse(self.appointment_datetime)
    d.strftime("%B %d, %Y at %I:%M")
  end
end
