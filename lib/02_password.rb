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
	puts "Secret n°1 : La tomate est un fruit et non un légume ! "
	sleep 0.8
	puts "Secret n°2 : Georges Sand était une femme."
	sleep 0.8
	puts "Secret n°3 : Les deux premiers secrets n'en étaient pas vraiment ! "
end

def perform
password = sign_up
login(password)
welcome_screen
end

perform
