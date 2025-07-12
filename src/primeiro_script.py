import pandas as pd
import numpy as np

print("Olá, este é o Projeto Rentabilidade IA!")

# Exemplo simples com Pandas
data = {'Nome': ['Alice', 'Bob', 'Carlos'],
        'Idade': [25, 30, 35],
        'Cidade': ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte']}
df = pd.DataFrame(data)
print("\nDataFrame de exemplo:")
print(df)

# Exemplo simples com NumPy
arr = np.array([10, 20, 30, 40, 50])
print("\nArray NumPy de exemplo:")
print(arr)
print("Soma do array:", np.sum(arr))

print("\nAmbiente Python com Pandas e NumPy está funcionando!")