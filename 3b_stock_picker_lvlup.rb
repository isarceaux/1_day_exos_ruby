#Stock Picker Level Up

jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

#Step ° : on créé une table contenant les hash de chaque jour
jours =[]
jours << jour_1
jours << jour_2
jours << jour_3
jours << jour_4
jours << jour_5
jours << jour_6
jours << jour_7

#Step 1 : on recréé une table de hashage associant à chaque company une table contenant les prix jour après jour
companies = jour_1.keys
new_prices = {}

companies.each do |company|
	prices_table =[]
	(jours.length).times do |n|
		prices_table<<jours[n][company]
	end

	new_prices[company] = prices_table
end

puts new_prices #Pour vérifier que la table va bien


#Step 2 : on va utiliser la même fonction que celle créée précédemment
#Même fonction que dans l'autre fichier de l'exercice 3
def stockpicker(prices)
	profit=0
	day_buy=0
	day_sell=0

	for i in (0..prices.length-1)
		for j in (i..prices.length-1)
			if prices[j]-prices[i]>profit
				profit=(prices[j]-prices[i])
				day_buy=i
				day_sell=j
			end
		end
	end
	puts "Pour les prix suivants :"
	puts prices
	puts "=>[#{day_buy},#{day_sell}] # $#{prices[day_buy]} $#{prices[day_sell]} = $#{profit}"
end


companies.each do |company|
	puts ""
	puts "**#{company}**"
	stockpicker(new_prices[company])
end
