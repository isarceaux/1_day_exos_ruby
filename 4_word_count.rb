corpus = "Howdy partner, sit down! How's it going?"
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


def jean_michel_data(corpus,dictionary)
	
	count = {}
	corpus.downcase!
	corpus_tab = corpus.scan(/\w+/)

	dictionary.each do |key_word|
			corpus_tab.each do |word|
				if word == key_word
					if count.has_key? key_word 
						count[key_word] += 1
					else
						count[key_word] = 1
					end
				end
			end
		end
	return count

end

puts jean_michel_data(corpus,dictionary)