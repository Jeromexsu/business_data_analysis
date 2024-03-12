import pandas as pd
path = 'UserBehavior.csv'
data = pd.read_csv(path)
print(data.info())
