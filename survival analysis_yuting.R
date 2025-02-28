
install.packages("survminer")
library(survminer)
colon <- read.csv("C:/Users/ywu09/Downloads/dataset-42025.csv")
head(colon)
summary(colon)

colon_recur <- subset(colon, etype == 1)
sum(is.na(colon_recur))

# Fit Kaplan-Meier curves
km_fit <- survfit(Surv(time, status) ~ rx, data = colon_recur)

# Plot survival curves
ggsurvplot(
  km_fit,
  data = colon_recur,
  pval = TRUE,           # Add log-rank test p-value
  conf.int = TRUE,       # 95% confidence intervals
  risk.table = TRUE,     # Show number at risk
  palette = "jco",       # Color palette
  title = "Recurrence-Free Survival by Treatment",
  xlab = "Time (Days)",
  legend.title = "Treatment",
  legend.labs = c("Observation", "Levamisole", "Levamisole + 5-FU"),
  break.time.by = 500    # X-axis breaks every 500 days
)
# Log-rank test for treatment groups
logrank_test <- survdiff(Surv(time, status) ~ rx, data = colon_recur)
print(logrank_test)


#Cox model
cox_model <- coxph(
  Surv(time, status) ~ rx + sex + age + obstruct + nodes + differ + extent,
  data = colon_recur
)

summary(cox_model)

# Check proportional hazards assumption
test_ph <- cox.zph(cox_model)
print(test_ph)  
ggcoxzph(test_ph)
