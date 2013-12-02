class Booking < ActiveRecord::Base
  validate :date_in_the_past
  validate :time_in_the_past
  validate :end_time_validation
  validate :no_lawn
  
  
  
  def date_in_the_past
    errors.add(:date, "You can't choose a date in the past.") if
				!date.blank? and date < Date.today
		end
    
  def time_in_the_past
    puts "debug: #{start_time}"
    errors.add(:start_time, "Time does not turn back unfortunately :( Stop living in the past!") if
    !start_time.blank? and start_time.strftime("%T") < Time.now.strftime("%T")
  end
  
  def end_time_validation
      errors.add(:end_time, "You can't choose a timing in the past and same timing as the start time!") if
    !end_time.blank? and end_time.strftime("%T") <= Time.now.strftime("%T") and end_time.strftime("%T") <= start_time.strftime("%T")
  end
  
 def no_lawn
   errors.add(:lawn, "Please select a lawn!") if
				lawn.blank?
		end
    
        
end
