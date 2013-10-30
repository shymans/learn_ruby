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

    digitize(hours) + ":" + digitize(minutes) + ":" + digitize(seconds_count)

  end

  def seconds
    0
  end

  def digitize(number)
    number.between?(0, 9) ? "0#{number}" : "#{number}"
  end

end