Perro = ["13",  "Puppy",  12/12/2012, "Macho", 123]

for index, value in enumerate(Perro):
    if value == 12/12/2012:
        Perro[index] = "13/12/2012"
    elif value == 123:
        Perro[index] = 28957346

print(Perro)
