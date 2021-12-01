require 'pry'

def starts_with_a_vowel?(word)
    !!word.match(/\A+[aeiou]+\w{1,}/i)  
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun\w{1,}ing\b/)
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    !!text.match(/\A[A-Z][\s\S]{1,}[.?!]\z/)
end

def valid_phone_number?(phone)
    !!phone.match(/\d{3}[\s\S]*\d{3}[\s\S]*\d{4}/x)
end

starts_with_a_vowel?('hallo')
puts first_word_capitalized_and_ends_with_punctuation?('I stepped on a Corn Flake, now I\'m a cereal killer.')