class Programme < ActiveRecord::Base
  validate :date_in_the_past

  
  
  def date_in_the_past
    errors.add(:date, "You can't choose a date in the past.") if
				!date.blank? and date < Date.today
		end


end
