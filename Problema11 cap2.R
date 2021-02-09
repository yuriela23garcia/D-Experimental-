setwd("C:/Users/YURIELA/Desktop/Diseño Expirimental")

df=read.csv("Sprays.csv")
df

df$Marca=factor(df$Marca)
str(df)

boxplot(Y~Marca,data=df)

modelo=aov(Y~Marca,data=df)
summary(modelo)

1-pf()

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")
leveneTest(Y~Marca,data=df)


plot(modelo$residuals)
abline(h=0)

plot(modelo$fitted.values, modelo$residuals)
abline(h=0)