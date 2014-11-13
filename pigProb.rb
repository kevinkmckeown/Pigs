#Pig probablities
#Tom Tibble and Kevin McKeown

#Problem 1

round_total = 0
print "Enter a hold number:"
hold = gets.chomp
print "Hold-at-20 turn simulations?"
run_count = gets.chomp
hold = hold.to_i
run_count = run_count.to_i
scores = Hash.new(0)

for i in 1..run_count
	until round_total  >= hold

		roll = rand(6) + 1

		if roll == 1
			round_total = 0
			break
		end
		round_total += roll
	end
	scores [round_total] += 1
	round_total = 0
end
puts "Score	Estimated Probability"
scores = Hash[scores.sort_by{|key,value| key}]
scores.each{ |key,value| puts("#{key}	#{((value.to_f/run_count)).round(3)}") }

# Problem 2

score = Array.new(26){ |i| i=0.0 }
score[0] = 1.0

for i in 0..19
	p = (score[i].to_f/6)
	score[i]=0.0
	score[0]+=p
	score[i+2]+=p
	score[i+3]+=p
	score[i+4]+=p
	score[i+5]+=p
	score[i+6]+=p
end

puts "\nProblem 2:"

puts "Score	Estimated Probability"
i=0
for val in score
		if val>0 
			puts "#{i}	#{'%.06f' % val}"
		end
		i=i+1
end

	
