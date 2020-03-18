 puts "Word please: "
 text = gets.chomp.downcase
 puts "Number please: "
 n = gets.chomp.to_i
 puts "mode pleas: E or D "
 mode = gets.chomp.downcase

if  mode.eql?("e")
  def caesar_cipher(text, n)
   alphabet = ('a'..'z').to_a 
   key = Hash[alphabet.zip(alphabet.rotate(n))]
   return text.each_char.inject("") { |newtext, char| newtext + key[char] }
 end
elsif  mode.eql?("d")
 def decaesar_cipher(text, n)
  alphabet = ('a'..'z').to_a 
  key = Hash[alphabet.zip(alphabet.rotate(-n))]
  text.each_char.inject("") { |newtext, char| newtext + key[char] }
  end
end
if  mode.eql?("e")
  x  = caesar_cipher(text, n)
  puts x 
else x  = decaesar_cipher(text, n)
  puts x 
end
