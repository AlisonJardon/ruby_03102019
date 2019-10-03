def sign_up
	puts "Bienvenue étranger, choisis un mot de passe stp :"
	print "> "
	password = gets.chomp 
return password
end

def login(password)
	puts "Saisis le mot de passe que tu as choisis stp :"
	print "> "
log = gets.chomp
while log != password 
puts "Ton mot de passe est incorrect, retape le stp :"
print "> "
log = gets.chomp
end
end

def welcome_screen
	puts "Bienvenue sur ton espace secret ! "
	sleep 0.8
	puts "Secret n°1 : "
	sleep 0.8
	puts "Secret n°2 : "
	sleep 0.8
	puts "Secret n°3 : "
	sleep 0.8
end

def perform
password = sign_up
login(password)
welcome_screen
end

perform
