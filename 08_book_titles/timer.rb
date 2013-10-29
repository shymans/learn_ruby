class Timer
attr_accessor 
  def timer=
  end

  def seconds=(secs)
    @secs = secs
  end

  def time_string
    padded(@secs)
  end

  def padded(num)
    if num == 0
      "00:00:00"
    elsif num.to_i <= 10
      "00:00:0#{num}"
    elsif num.to_i > 10 && num.to_i < 60
      "00:00:#{num}"
    elsif num.to_i >= 60 && num.to_i < 3600
      seconds = num % 60
      minutes = num / 60
      if seconds < 10 && minutes < 10
        "00:0#{minutes}:0#{seconds}"
      elsif seconds < 10 && minutes >= 10
        "00:#{minutes}:0#{seconds}"
      elsif seconds >= 10 && minute >= 10
        "00:#{minutes}:#{seconds}"
      end
    elsif num.to_i >= 3600
      hours = num / 3600
      minutes = (num - 3600) / 60
      seconds = (num - 3600) % 60
      if seconds < 10 && minutes < 10
        "0#{hours}:0#{minutes}:0#{seconds}"
      elsif seconds < 10 && minutes >= 10
        "0#{hours}:#{minutes}:0#{seconds}"
      elsif seconds >= 10 && minutes >= 10
        "0#{hours}:#{minutes}:#{seconds}"
      elsif seconds >= 10 && minutes < 10
        "0#{hours}:0#{minutes}:#{seconds}"
      end

    end
  end


  def seconds
    0
  end

end