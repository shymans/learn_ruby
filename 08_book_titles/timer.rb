class Timer

  SECOND = 1
  MINUTE = 60
  HOUR = 3600

  def timer=
  end

  def seconds=(secs)
    @secs = secs
  end

  def time_string
    padded(@secs)
  end

  def padded(num)
    
  hours = num / HOUR
  minutes = ( num % HOUR ) / MINUTE
  seconds_count = ( num % MINUTE ) / SECOND

  if hours >= 10 && minutes >= 10 && seconds_count >= 10
    "#{hours}:#{minutes}:#{seconds_count}"
  elsif hours >= 10 && minutes >= 10 && seconds_count < 10
    "#{hours}:#{minutes}:0#{seconds_count}"
  elsif hours >= 10 && minutes < 10 && seconds_count < 10
    "#{hours}:0#{minutes}:0#{seconds_count}"
  elsif hours >= 10 && minutes < 10 && seconds_count >= 10
    "#{hours}:0#{minutes}:#{seconds_count}"
  elsif hours < 10 && minutes >= 10 && seconds_count >= 10
    "0#{hours}:#{minutes}:#{seconds_count}"
  elsif hours < 10 && minutes < 10 && seconds_count >= 10
    "0#{hours}:0#{minutes}:#{seconds_count}"
  elsif hours < 10 && minutes < 10 && seconds_count < 10
    "0#{hours}:0#{minutes}:0#{seconds_count}"
  end
end

  def seconds
    0
  end

end