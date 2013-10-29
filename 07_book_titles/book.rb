class Book

  def title=(name)
    @name = name
  end

  def title
    string_array = @name.split
    conjunctions = %w(and to or in the of a an)

    if @name.include?(" ") 
    string_array.each_with_index do |word, index|
      word.capitalize! unless conjunctions.include?(word)
      if index == 0
        word.capitalize!
      end
      end
      string_array.join(" ")
    else  
    @name.capitalize!
    end
  end

end