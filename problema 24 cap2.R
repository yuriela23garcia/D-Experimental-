tb=c(17.2,17.5,18.6,15.9,16.4,17.3,16.8,18.4,16.7,16.6)
ta=c(21.4,20.9,19.8,20.4,20.6,21.0,20.8,19.9,21.1,20.3)

t.test(tb,ta)


df=data.frame(tb=tb,ta=ta)
df=stack(df)
df

names(df)=c("T","TEMPERATURA")
df
boxplot(T~TEMPERATURA,data=df)

str(df)

boxplot(T~TEMPERATURA,data=df)

