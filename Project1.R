library(readxl)
women_stem <- read_excel("R/4211/women-stem.xlsx")

women_stem$Category <- factor(women_stem$Category, labels=c("Biology & Life Science",
                      "Computers & Mathematics","Engineering", "Health", "Physical Science"))

plot(women_stem$Year,women_stem$Proportion, pch=21, bg=c("red","green3","blue", "orange", "purple")
     [unclass(women_stem$Category)], main = "Proportion of Women in STEM at UF",
     xlab = "Year", ylab="Proportion")

lines(women_stem$Year[women_stem$Category=="Biology & Life Science"], 
      women_stem$Proportion[women_stem$Category=="Biology & Life Science"], col="red", type="b")
lines(women_stem$Year[women_stem$Category=="Computers & Mathematics"], 
      women_stem$Proportion[women_stem$Category=="Computers & Mathematics"], col="green3", type="b")
lines(women_stem$Year[women_stem$Category=="Engineering"], 
      women_stem$Proportion[women_stem$Category=="Engineering"], col="blue", type="b")
lines(women_stem$Year[women_stem$Category=="Health"], 
      women_stem$Proportion[women_stem$Category=="Health"], col="orange", type="b")
lines(women_stem$Year[women_stem$Category=="Physical Science"], 
      women_stem$Proportion[women_stem$Category=="Physical Science"], col="purple", type="b")

legend("center",legend=c("Biology & Life Science",
                "Computers & Mathematics","Engineering", "Health", "Physical Science"),
       col=c("red","green3","blue", "orange", "purple"), lty=1,cex=0.8, box.lty = 0)


#Biological & Life Science
prop.test(x=c(268943,6205), n=c(453862,10813),
           alternative = "two.sided",
           conf.level = 0.95)
#Computers & Mathematics
prop.test(n=c(299008,1936), x=c(90283,574),
          alternative = "two.sided",
          conf.level = 0.95)
#Engineering
prop.test(n=c(537583,16197), x=c(129276,3781),
          alternative = "two.sided",
          conf.level = 0.95)
#Health
prop.test(n=c(463230,9168), x=c(387713,7557),
          alternative = "two.sided",
          conf.level = 0.95)
#Physical Science
prop.test(n=c(185479,4316), x=c(90089,2215),
          alternative = "two.sided",
          conf.level = 0.95)


