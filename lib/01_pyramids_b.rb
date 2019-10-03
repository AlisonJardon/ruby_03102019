def ask_number
	puts "Salut, bienvenue dans ma super WTF pyramide ! Combien d'étages veux-tu ?"
	print "> "
	number = Integer(gets) rescue 0

	while number < 1 || number > 25 || number % 2 == 0
		puts "Choisis un nombre entier impaire entre 1 et 25 stp"
		print "> "
		number = Integer(gets) rescue 0
	end
	return number
end

def construct_wtf_pyramid(number)
	puts "Voici la WTF pyramide :"

	number.times do |nbr|
		if nbr + 1 <= (number / 2) + 1
			print ' ' * ((number / 2) - nbr)
			puts '#' * (2 * (nbr - 0) + 1)
		else
			print ' ' * (nbr - number / 2)
			puts '#' * (2 * (number  - nbr) - 1)
		end
	end
end

def draw_wtf_pyramid
	number = ask_number
	construct_wtf_pyramid(number)
end

draw_wtf_pyramid