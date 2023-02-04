# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, arr)
  sorted = word.chars.sort.join

  arr.filter { |str| str.chars.sort.join == sorted }
end
# END
