def new_game
	puts "Nouvelle partie !"
	puts "Tu es sur la marche n°0"
	puts "Lance le dé stp"
end

def roll_dice
	rolled_dice = rand(1 .. 6)
	puts "resultat #{rolled_dice}"
	return rolled_dice
end

def progress(rolled_dice)

	k = 0
	compteur = 0

	while compteur != 10
		puts "Relance le dé"
		rolled_dice = roll_dice

		case rolled_dice

		when 5, 6 then
			compteur += 1
			puts "Tu avances d'1 marche, tu es maintenant sur la marche n°#{compteur}"

		when 1 then
			if compteur == 0
				then compteur += 0
				puts "Tu restes sur la marche n°#{compteur}"
			else
				compteur -= 1
				puts "Tu descends d'1 marche, tu es maintenant sur la marche n°#{compteur}"
			end

		when 2, 3, 4 then
			compteur += 0
			puts "Tu restes sur la marche n°#{compteur}"
		end

		k = k + 1

	end

	puts "-------------------------------------------------------------------------------- Nombre de lancés : #{k}"
	return k

end

def perform
	new_game
	rolled_dice = roll_dice
	puts "Résultat : #{rolled_dice}"
	progress(rolled_dice)
end

def average_finish_time
	rolled_dice = roll_dice
	total = 0
	partie = 1
	100.times do
		puts "******************************************************************************** Partie n°#{partie}"
		perform
		total = total + progress(rolled_dice)
		partie = partie + 1
	end
	moyenne = total / 100
	puts "Moyenne : #{moyenne}"
	return total
end

average_finish_time