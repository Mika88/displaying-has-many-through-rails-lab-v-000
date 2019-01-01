class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_datetime
    DateTime.new.strftime("%B %d, %Y at %I:%M")
  end
end
