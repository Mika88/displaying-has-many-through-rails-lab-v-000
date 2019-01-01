class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_datetime
    t = Time.now
    t.strftime("%B %d, %Y at %I:%M")
  end
end
