sum = 0
i=0
j=0

while i*3 <= 1000
	sum +=i*3
	i+=1	
end

puts sum

while j*5 <= 1000
	sum +=j*5
	j+=1	
end

puts "La somme des multiples de 3 et 5, tels que les multiples sont inférieurs à 1000 est #{sum}!"