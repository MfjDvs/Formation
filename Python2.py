phrase = input("Donne moi une phrase ")

count = {}

for mot in phrase.split():
    count[mot] = count.get(mot , 0) +1
print(count) 