def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
nombre = Integer(gets) rescue false
while nombre == false || nombre < 1 || nombre > 25
puts "Choisis un nombre entre 1 et 25"
print "> "
nombre = Integer(gets) rescue false
end
return nombre
end

def full_pyramid(nombre)
	puts "Voici la pyramide :"
  nombre.times do |n|
    print ' ' * (nombre - n)
    puts '#' * (2 * n + 1)
sleep 0.5
end
end

def perform
nombre = half_pyramid
full_pyramid(nombre)
end


perform