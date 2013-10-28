def echo(name)
  return "#{name}"
end

def shout(name)
  return "#{name.upcase}"
end

def repeat(name, num = 1)
  if num == 1
    return "#{name} " + "#{name}"
  else
  new_name = "#{name} " * num
  return new_name.strip!
end
end

def start_of_word(name, num)
  return name[0,num]
end

def first_word(name)
  test = name.split(' ')
  return test.first
end

def titleize(name)
  excluded_words = %w(the and in over)

  # name.gsub(/\w+/) do |word| 
  #   excluded_words.include?(word) ? word : word.capitalize
  # end

  words = name.split(" ")
  words.each_with_index do |word, index|
    word.capitalize! unless excluded_words.include?(word)
      if index == 0
        word.capitalize!
      end
  end
  words.join(" ")
end
