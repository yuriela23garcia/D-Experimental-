setwd("C:/Users/YURIELA/Documents/DISEÑO EXPERIMENTAL")


data=read.csv("datosmhp.csv")
data



mujer=c(75,77,78,79,77,73,78,79,78,80)
hombre=c(74,72,77,76,76,73,75,73,74,75)

t.test(mujer,hombre)


df=data.frame(mujer=mujer,hombre=hombre)
df=stack(df)
df

names(df)=c("T","GENERO")
df
boxplot(T~Genero,data=df)

str(df)

boxplot(T~GENERO,data=df)
