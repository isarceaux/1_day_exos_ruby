#Initiating with a random price list of 10 elements
prices_test=[]
10.times do |n|
	prices_test<<rand(20)
end

#Function to find the best trading strategy
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
	puts "[#{day_buy},#{day_sell}] # $#{prices[day_buy]} $#{prices[day_sell]} = $#{profit}"
end

#Test of the function on the prices generated randomly
stockpicker(prices_test)