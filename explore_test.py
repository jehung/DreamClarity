import os.path
import numpy as np
import pandas as pd
import seaborn as sns


df = pd.read_csv('C:\\Users\\jehun\\Documents\\Mathfreak\\Work\\Dream Clarity\\USASpending.csv',skiprows=0, low_memory=False)
df.info()