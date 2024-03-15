#Read data from data collected
gasMileageRefillData <- read.csv("GasMileageRefund.tsv", sep='\t')
#Calculate ratioOfDifference into data set
gasMileageRefillData$ratioOfDifference <- ((gasMileageRefillData$spent - gasMileageRefillData$approximated) / gasMileageRefillData$price.taken)
#calculate ratio of Approximated and Spent
gasMileageRefillData$ratioOfApproximatedAgainstSpent <- gasMileageRefillData$approximated / gasMileageRefillData$spent
#calculate two different models for anova comparison with summary of results
summary(model1 <- glm(gasMileageRefillData$IsMazda.CX.5 ~ gasMileageRefillData$ratioOfApproximatedAgainstSpent + gasMileageRefillData$price.taken, family = binomial(link = logit)))
summary(model2 <- glm(gasMileageRefillData$IsMazda.CX.5 ~ gasMileageRefillData$Difference + gasMileageRefillData$price.taken, family = binomial(link = logit)))
#calculate anova model
anova(model1, model2)
