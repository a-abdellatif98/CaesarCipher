# frozen_string_literal: true

puts 'Word please: '
text = gets.chomp.downcase
puts 'Number please: '
n = gets.chomp.to_i
puts 'mode pleas: E or D '
mode = gets.chomp.downcase

@alphabet = ('a'..'z').to_a

def caesar_cipher(text, n)
  key = Hash[@alphabet.zip(@alphabet.rotate(n))]
  text.each_char.inject('') { |newtext, char| newtext + key[char] }
end

def decaesar_cipher(text, n)
  key = Hash[@alphabet.zip(@alphabet.rotate(-n))]
  text.each_char.inject('') { |newtext, char| newtext + key[char] }
end

result = mode.eql?('e') ? caesar_cipher(text, n) : decaesar_cipher(text, n)
puts result
