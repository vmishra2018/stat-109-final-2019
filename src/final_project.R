mydata = read.csv('medicare_data.csv')
names(mydata)
bad_data = names(mydata) %in% c('X', 'Provider.ID', 'Agency.Name', 
                                'Street.Address', 'City', 'State', 'Zip.Code')
medicare_data = mydata[!bad_data]
head(medicare_data)
fit = lm(Total.HHA.Medicare.Standard.Payment.Amount..non.LUPA.~., data = medicare_data)
summary(fit)
#fit_step = step(fit)
#summary(fit_step)
library(car)
vif(fit)
high_vif = names(medicare_data) %in% c('Average.Number.of.Total.Visits.Per.Episode..non.LUPA.',
                                       'Distinct.Beneficiaries..non.LUPA.','Female.Beneficiaries',
                                       'Total.HHA.Medicare.Payment.Amount..non.LUPA.',
                                       'Male.Beneficiaries','Total.LUPA.Episodes','White.Beneficiaries',
                                       'Total.Episodes..non.LUPA.')
low_vif = medicare_data[!high_vif]
low_vif_fit = lm(Total.HHA.Medicare.Standard.Payment.Amount..non.LUPA. ~ ., data = low_vif)
vif(low_vif_fit)
summary(low_vif_fit)
high_p_value = names(low_vif) %in% c('Average.Number.of.Medical.Social.Visits.Per.Episode..non.LUPA.',
                                     'Percent.of.Beneficiaries.with.Chronic.Kidney.Disease',
                                     'Percent.of.Beneficiaries.with.Osteoporosis',
                                     'Percent.of.Beneficiaries.with.Atrial.Fibrillation',
                                     'Percent.of.Beneficiaries.with.Hypertension',
                                     'Percent.of.Beneficiaries.with.Asthma',
                                     'Percent.of.Beneficiaries.with.Diabetes',
                                     'Percent.of.Beneficiaries.with.CHF',
                                     'Percent.of.Beneficiaries.with.Schizophrenia',
                                     'Hispanic.Beneficiaries')
#high_p_value
low_p_value = low_vif[!high_p_value]
low_p_value_fit = lm(Total.HHA.Medicare.Standard.Payment.Amount..non.LUPA. ~ ., data = low_p_value)
summary(low_p_value_fit)
vif(low_p_value_fit)
#max(cooks.distance(low_vif_fit))
shapiro.test(residuals(low_p_value_fit))
#ad.test
#nortest library
#hatvalues(fit)
library(R330)
all_fit = allpossregs(Total.HHA.Medicare.Standard.Payment.Amount..non.LUPA.~., data=low_p_value, best=3)
all_fit
