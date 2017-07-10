corpus = "Howdy partner, sit down! How's it going?"
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


def jean_michel_data(corpus,dictionary)
	
	count = {}
	corpus = corpus.downcase
	corpus_tab = corpus.scan(/\w+/)

	dictionary.each do |key_word|
		count[key_word]=0 #initialisation
			corpus_tab.each do |word|
				if word == key_word 
					count[key_word]+=1
				end
			end
		end
	return count

end

puts jean_michel_data(corpus,dictionary)