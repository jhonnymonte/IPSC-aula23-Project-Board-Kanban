
# %% ejercicio 6

Historial2=(23500, 5960, 2300, 10200, 8900)
total=(sum(Historial2))
    

def mostrar_gastos(Historial2):
    gastos_mayores = []
    for i in Historial2:
        if i > 5000:
            gastos_mayores.append(i)
    
    total=sum(gastos_mayores)
    
    print(f'lista de gastos{gastos_mayores} gastos en total  {total}')




