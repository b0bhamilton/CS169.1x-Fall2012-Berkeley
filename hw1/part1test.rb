#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
	newstr = str.gsub(/\W/, '').downcase #gets rid of punctuation and converts all characters to lowercase
	if newstr == newstr.reverse
		true
	else
		false
	end
end

def count_words(str)
	newstr = str.downcase.split(/[^a-zA-Z]/) 
	numof = Hash.new(0)
newstr.each {|word| numof[word] += 1}
numof.delete_if {|word, count| word ==""}
#numof.each { |word, count| puts "#{word} #{count}"}
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str +" is a palindrome!"
else
  puts test_str +" is NOT a palindrome!"
end


if test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"
  puts test_str +" is a palindrome!"
else
  puts test_str +" is NOT a palindrome!"
end


word_count = count_words test_str
puts word_count
