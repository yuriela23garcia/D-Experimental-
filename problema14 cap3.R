setwd("C:/Users/YURIELA/Desktop/Diseño Expirimental")

df=read.csv("problema14cap3.csv")
df

str(df)
df$trat=factor(df$trat)

boxplot(ppd~trat,data=df,main="PORDUCTO DEFECTUOSO")

modelo=aov(ppd~trat,data = df)
summary(modelo)

tk=TukeyHSD(modelo)
tk
plot(tk)

qqnorm(modelo$residuals)
qqline(modelo$residuals)
shapiro.test(modelo$residuals)

library(car)

leveneTest(df$ppd~df$trat)

plot(modelo$residuals)
abline(h=0)

plot(df$ppd,modelo$residuals)
abline(h=0)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)

