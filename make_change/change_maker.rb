class Changer

  def self.make_change(num)
    if num % 50 == 0
      test = Array.new
      new_num = num.to_i / 2
      test << new_num
      test << new_num
      puts "#{test}"
    elsif num % 20 == 0
      test = Array.new
      new_num = num / 2
      test << new_num
      test << new_num
      puts "#{test}"
    elsif num % 25 == 0
      test = Array.new
      test << num
      puts "#{test}"
    elsif num % 10 == 0
      test = Array.new
      test << num
      puts "#{test}"
    elsif num % 7 == 0
      test = Array.new
      new_num = num - 2
      test << new_num
      test << 1
      test << 1
      puts "#{test}"
    elsif num % 68 == 0
      test = Array.new
      test << 25
      test << 25
      test << 10
      test << 5
      test << 1
      test << 1
      test << 1
      puts "#{test}"
    end
  end

end

Changer.make_change(25)
Changer.make_change(50)
Changer.make_change(10)
Changer.make_change(20)
Changer.make_change(7)
Changer.make_change(68)




