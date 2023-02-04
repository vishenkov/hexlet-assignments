# frozen_string_literal: true

def make_censored(text, stop_words)
  # BEGIN
  result = []

  text.split.each do |word|
    result << (
      if stop_words.include? word
        '$#%!'
      else
        word
      end)
  end

  result.join(' ')
  # END
end
