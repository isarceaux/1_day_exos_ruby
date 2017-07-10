sum = 0
i=0
j=0
k=0

#Additionne les multiples de 3
while i*3 <= 1000
	sum +=i*3
	i+=1	
end

#Additionne les multiples de 5
while j*5 <= 1000
	sum +=j*5
	j+=1	
end

#Supprime une fois les multiples qui ont été ajoutés deux fois, soit ceux de 5 et 3
while k*3*5 <= 1000
	sum -=k*3*5
	k+=1	
end


puts "La somme des multiples de 3 et 5, tels que les multiples sont inférieurs à 1000 est #{sum}!"