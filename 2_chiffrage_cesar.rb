#Initiatiating
puts "Donnez un mot que vous souhaitez chiffrer"
testword = gets.chomp

puts "Donnez le nombre de lettre duquel vous voulez décaler"
testnumber = gets.chomp.to_i

def chiffre_de_cesar(stringtest,numberofletters)
	i=0
	table=[]
	codedstring =""
	stringtest=stringtest.downcase

	while i< stringtest.length
		if stringtest[i].ord+numberofletters <= 122
			table << (stringtest[i].ord+numberofletters)
		else
			table << (stringtest[i].ord+numberofletters-122+96)
		end
		i+=1
	end

	table.each do |letter|
		codedstring+=letter.chr
	end

	return codedstring
end

puts chiffre_de_cesar(testword,testnumber)