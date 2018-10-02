# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.insert(-1, "Dino", "Hopper")

# flintstones.push("Dino").push("Hopper")
# flintstones.concat(%w(Dino Hopper))

p flintstones