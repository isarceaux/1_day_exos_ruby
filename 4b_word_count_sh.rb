#Fonction pour compter les mots
def jean_michel_data(corpus,dictionary)
	
	count = {}
	corpus = corpus.downcase
	corpus_tab = corpus.scan(/\w+/)

	dictionary.each do |key_word|
			corpus_tab.each do |word|
				if word == key_word
					if count.has_key? key_word 
						count[key_word]+=1
					else
						count[key_word]=1
					end
				end
			end
			puts "+1 key_word checked..."
		end
	return count

end

#Initialisation des fichiers
file = File.open("shakespeare.txt", "rb")
corpus = file.read
file.close

file2 = File.open("swearWords.txt", "rb")
dict_string = file2.read
file2.close
dictionary2 = dict_string.scan(/\w+/)

dictionary1 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

puts "Comptage selon le premier dictionnaire"
puts jean_michel_data(corpus,dictionary1)

puts "Comptage selon le deuxième dictionnaire"
puts jean_michel_data(corpus,dictionary2)