class Changer

    PENNY = 1
    NICKEL = 5
    DIME = 10
    QUARTER = 25

  def self.make_change(num)
    
    change_array = []

    quarters = num / QUARTER
    dimes = (num % QUARTER) / DIME
    nickels = (num % DIME) / NICKEL
    pennies = (num % NICKEL) / PENNY


    quarters.times { change_array << QUARTER }
    dimes.times { change_array << DIME }
    nickels.times { change_array << NICKEL }
    pennies.times { change_array << PENNY }
    puts "#{change_array}"
  end

end

Changer.make_change(25)
Changer.make_change(50)
Changer.make_change(10)
Changer.make_change(20)
Changer.make_change(7)
Changer.make_change(68)




