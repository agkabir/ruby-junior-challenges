# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'

def age_in_days(day, month, year)
  # TODO: your code here
  return (Date.today - Date.new(year,month,day)).to_i # Can be improved more like validity check of day or month
end
