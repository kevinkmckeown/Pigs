#Pigs Hold at 20
#Tom Tibble and Kevin

round_total = 0
print "Enter a hold number:"
hold = gets.chomp
print "Enter the number of simulations:"
run_count = gets.chomp
hold = hold.to_i
run_count = run_count.to_i
scores = Hash.new(0)

for i in 1..run_count
	until round_total  >= hold

		roll = rand(6) + 1
		#puts("Roll: #{roll}")

		if roll == 1
			round_total = 0
			break
		end
		round_total += roll
	end
	#puts("Round total: #{round_total}")
	scores [round_total] += 1
	round_total = 0
end
	puts scores
