def word_length(a_word)
  # TODO: find out how many letters are in this word
  # example: the input "cat" should return 3
  a_word.length
end

def bigify(a_string)
  # TODO: turn all letters of the input to capital
  # example: the input "monkey" should return MONKEY
  a_string.upcase
end

def does_it_contain?(a_string, substring)
  # TODO: find out if the substring is contained in a_string
  # example: the inputs "monkeypants" and "pants" should return true
  a_string.include? substring
end

def from_word_to_letters(a_word)
  # TODO: turn the word into an array of all its letters
  # example: the input "monkey" should return ["m", "o", "n", "k", "e", "y"]
  a_word.split("")
end

def from_sentence_to_words(a_sentence)
  # TODO: turn the sentence into an array of its words
  # example: the input "you only live once" should return ["you", "only", "live", "once"]
  a_sentence.split(" ")
end

def switcharoo(word, old_letter, new_letter)
  # TODO: turn all old_letters into new_letters inside a word
  # example: inputs "casablanca", "a" and "i" should return "cisiblinci"
  word.gsub(old_letter, new_letter)
end

def super_divide(number_a, number_b)
  # TODO: returns the EXACT division of number_a and number_b
  # example: the inputs 10 and 4 should return 2.5
  number_a.to_f/number_b
end

def get_modulo(number_a, number_b)
  # TODO: returns the remainder of the division of number_a by number_b
  # example: the inputs 14 and 6 should return 2
  number_a%number_b
end

def from_words_to_sentence(some_words)
  # TODO: returns a sentence built from an array of words
  # example: the input ["you", "only", "live", "once"] should return "you only live once"
  some_words.join(" ")
end

def word_count_greater_than(words, count)
  # TODO: returns the number of words with more letters than count
  # example: the inputs ["dog", "cat", "monkey", "tiger"] and 3 should return 2
  words.count{|word| word.length > count}
end

def countdown(an_array)
  # TODO: rearrange the array in descending order(biggest value first, smallest last)
  # example: the input [2, 4, 3, 1, 5] should return [5, 4, 3, 2, 1]
  an_array.sort.reverse
end
