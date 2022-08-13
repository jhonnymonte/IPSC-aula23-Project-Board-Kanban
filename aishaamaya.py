#Crear una lista de python denominado "Perro2", que contenga los siguientes valores:
# 14, Fido, 12/12/2012, Macho, 23546987
#Recorrer la lista "perro" con un bucle y mostrar sus elementos por pantalla, comenzando desde el ultimo,
#hasta el primero

# Con el bucle for

Perro2 = [14,  'Fido',  "12/12/2012" , 'Macho', 23546987]

for i in reversed(Perro2):
    print(i)
    
# Con bucle while

Perro2 = [14,  'Fido',  "12/12/2012" , 'Macho', 23546987]

i=len(Perro2)-1 
while i>=0:
   print('Indice: {} -- {}'.format(i,Perro2[i]))
   i-=1 