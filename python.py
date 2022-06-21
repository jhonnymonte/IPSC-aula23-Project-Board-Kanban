



a = 1

print (a)

a = 1 # int
b = 2.3 # float
c = 'hola' # str
d = True # bool
e = False# bool
f = None # NoneType
g = [1,2,3] # list
h = (1,2,3) # tuple
i = {'a':1,'b':2} # dict key:value
#operadores aritmeticos 
'''
suma = +
resta = -
multiplicacion = *
division = /
modulo = %
potencia = **
'''

#%% realizar la suma 2 numeros y imprimir el resultado

a = 4
b = 8

c = a + b
print(c)

print(a + b)

#%%

edad = int(input('Ingrese su edad: '))
nombre = input('Ingrese su nombre: ')
apellido =  input('Ingrese su apellido: ')

print('Hola', nombre, apellido, 'su edad es:', edad)

print('hola tu nombre es',nombre,'tu apellido es',apellido,'tu edad es',edad)


# %%
bruto = 175
tasa_interes = 12.5
interes = bruto * tasa_interes/ 100
tasa_bonificacion = 5.0
bonificacion = bruto * tasa_bonificacion/100
neto = (bruto - bonificacion) + interes

print(neto,bonificacion,interes)

# %%
a = 'esto es una cosa '
b = 'esto es otra cosa'
c = '==========-------******=====-=-=-=-=-'

print(a)
print(c)
print(b)

# %%
def func1(a):
    return a ** a
def func2(a):
    return func1(a) * func1(a)

print(func2(2))
#%%
def fun(inp=2,out=3):
    return inp + out

print(fun(out=2))
#%%
dictionario = {}
my_list = ['a','b','c','d']

for i in range(len(my_list)- 1):
    dictionario[my_list[i]] = (my_list[i], )

for i in sorted(dictionario.keys()):
    k = dictionario[i]
    
print(k[0],k[1])
print (k)


# %%
def fun(x):
    if x % 2 == 0:
        return 1
    else:
        return
print(fun(fun(2))+1)

# %%
def ant():
    print(var + 1, end = ' ')

var = 1
any()
print(var)
# %%
def func(x):
    global Y
    y = x * x
    return Y
func(2)

# %%
tup = (1,2,3,8)
tup = tup[1:-1]
tup = tup[0]
print(tup)
# %%
x = 6
y = 2

x = x // y
y = y // x
print(x)
print(y)
# %%
