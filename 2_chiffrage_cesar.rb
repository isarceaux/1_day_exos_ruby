#Initiatiating
puts "Donnez un mot que vous souhaitez chiffrer"
testword = gets.chomp

puts "Donnez le nombre de lettre duquel vous voulez décaler"
testnumber = gets.chomp.to_i

def chiffre_de_cesar(text_to_convert,numberofletters)
	i=0
	table=[]
	coded_text =""
	text_to_convert=text_to_convert.downcase

	while i< text_to_convert.length
		if text_to_convert[i].ord < 97
			table << text_to_convert[i].ord
		else
			if text_to_convert[i].ord+numberofletters <= 122
				table << (text_to_convert[i].ord+numberofletters)
			else
				table << (text_to_convert[i].ord+numberofletters-122+96)
			end
		end
		i+=1
	end

	table.each do |letter|
		coded_text+=letter.chr
	end

	return coded_text
end

puts chiffre_de_cesar(testword,testnumber)