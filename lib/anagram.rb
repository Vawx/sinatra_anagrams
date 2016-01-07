
class String
  define_method(:check_for_anagrams) do |possibilities|
    found_anagrams = ""
    possibilities.each do |word|
      if is_anagram( word )
        found_anagrams += word + " "
      end
    end
    return found_anagrams.split(" ")
  end

  define_method(:is_anagram) do |word|
    split_self = word.split(//)
    matched_characters = 0
    split_self.each do |char|
      if self.include?(char)
        matched_characters += 1
      end
    end
    return matched_characters == self.length
  end
end
