
# coding: utf-8

# In[48]:

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
get_ipython().magic('matplotlib inline')


# In[8]:

apc_df = pd.read_table('apc_2011_subset.txt')


# In[9]:

print(apc_df.head())


# In[10]:

print(apc_df.describe())


# In[13]:

apc_df.Line.unique()


# In[58]:

df84 = apc_df[apc_df.Line == 84]
df99 = apc_df[apc_df.Line == 99]
df480 = apc_df[apc_df.Line == '480']
df84.columns.values


# In[64]:

plt.style.use('ggplot')


# In[72]:

df84.plot.scatter(x='ActualArriveTime', y='OnsLoadCompensated')


# In[ ]:



