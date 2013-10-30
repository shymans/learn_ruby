class Temperature
  def initialize(hash = {})
    @hash = hash
  end

  def to_fahrenheit
    if @hash[:f]
      @hash[:f]
    else
      (@hash[:c] * ( 9.0 / 5.0)) + 32
    end
  end

  def to_celsius
    if @hash[:c]
      @hash[:c]
    else
      (@hash[:f] - 32) * 5.0 / 9.0
    end
  end

  def self.in_celsius(num)
    Temperature.new({c:num})
  end

  def self.in_fahrenheit(num)
    Temperature.new({f:num})
  end
end

class Celsius < Temperature
  def initialize(num)
    @temp = num
  end

  def to_celsius
    @temp
  end

  def to_fahrenheit
    (@temp * (9.0 / 5.0)) + 32
  end
end

class Fahrenheit < Temperature
  def initialize(num)
    @temp = num
  end

  def to_celsius
    (@temp - 32) * 5.0 / 9.0
  end

  def to_fahrenheit
    @temp
  end
end