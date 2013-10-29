def translate(name)
  
  vowels = %w(a e i o u y)
  consonants = ('a'..'z').to_a - vowels
  special_sound = %w(qu)
  string_array = name.split

  string_array.map! do |word|
    if vowels.include?(word[0])
      word + 'ay'
    elsif consonants.include?(word[0]) && special_sound.include?(word[1..2])
      word[3..-1] + word[0..2] + 'ay'
    elsif special_sound.include?(word[0..1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word
    end 
  end
  string_array.join(" ")
end

