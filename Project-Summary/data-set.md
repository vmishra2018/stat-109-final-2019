## Data Set

### Source
Medicare Home Health Agency (HHA) Provider Aggregate Report, CY 2016
https://data.cms.gov/Medicare-Home-Health-Agency-HHA-/Medicare-Home-Health-Agency-HHA-Provider-Aggregate/fdg8-v2i5

### Introduction

“The Home Health Agency PUF presents summarized information on services provided to Medicare beneficiaries by home health agencies. It contains information on utilization, payment (Medicare payment and Medicare standardized payment), submitted charges, and demographic and chronic condition indicators organized by CMS Certification Number (6-digit provider identification number), Home Health Resource Group (HHRG), and state of service.”
Our dataset contains aggregated, annual payment claim information for Home Health Agencies (HHA), which provide services to Medicare recipients. 
It gives insight into non Low Utilization Payment Adjustment (LUPA) Claims by these agencies. A non LUPA claim occurs when more than 4 billable visits are provided to a patient within a 60-day medical episode. 

The fact that these claims are non LUPA claims is important because the Medicare reimbursement on these claims is not determined by a national, standardized per visit rate, it is instead calculated using patient characteristics and doesn’t necessarily increase based on the number of billable visits for that specific medical episode.

The Medicare reimbursement for these claims is calculated by first completing an Outcomes and Assessment Information Set (OASIS) for each patient and running it through the Home Health Groupings Model. The result of this assessment groups episodes into one of 153 Home Health Resource Groups (HHRGs).  The derived HHRG is then used by Medicare to calculate the reimbursement amount for that episode.

Our data does not contain information at the patient level, but instead provides us insight at the Home Health Agency level. It gives us insight into the businesses of HHA’s in the United States and shows us their interactions with the federal Medicare system.

### Relevant Columns

| **Column Name**                                              | **Description**                                              |
| ------------------------------------------------------------ | :----------------------------------------------------------- |
| Total   Episodes (non-LUPA)                                  | Total   count of non-LUPA episodes provided by a specific home health agency or in a   unique HHRG category in the calendar year |
| Distinct   Beneficiaries (non-LUPA)                          | Number   of distinct Medicare beneficiaries receiving at least one non-LUPA home   health episode in the calendar year. Beneficiaries may receive multiple home   health episodes per year but are only counted once in this field. |
| Average   Number of Total Visits Per Episode    (non-LUPA)   | Average   number of total visits provided by the HHA during a non-LUPA episode. |
| Average   Number of Skilled Nursing Visits Per Episode (non-LUPA) | Average   number of skilled nursing visits provided by the HHA during a non-LUPA   episode. |
| Average   Number of PT Visits Per Episode    (non-LUPA)      | Average   number of physical therapy visits provided by the HHA during a non-LUPA   episode. |
| Average   Number of OT Visits Per Episode    (non-LUPA)      | Average   number of occupational therapy visits provided by the HHA during a non-LUPA   episode. |
| Average   Number of ST Visits Per Episode    (non-LUPA)      | Average   number of speech therapy visits provided by the HHA during a non-LUPA   episode. |
| Average   Number of Home Health Aide Visits Per Episode (non-LUPA) | Average   number of home health aide visits provided by the HHA during a non-LUPA   episode. |
| Average   Number of Medical-Social Visits Per Episode (non-LUPA) | Average   number of medical-social visits provided by the HHA during a non-LUPA   episode. |
| Total   HHA Charge Amount (non-LUPA)                         | Total   charges that the home health agency submitted for non-LUPA episodes. |
| Total   HHA Medicare Payment Amount    (non-LUPA)            | Total   amount that Medicare paid for non-LUPA episodes. Home health services do not   have any cost-sharing requirements and the Medicare payment amount will equal   the allowed amount. |
| Total   HHA Medicare Standard Payment    Amount   (non-LUPA) | Total   amount that Medicare paid for non-LUPA episodes adjusted for geographic   differences in payment rates. |
| Outlier   Payments as a Percent of Medicare    Payment   Amount (non-LUPA) | The   percent of total Medicare payments for non-LUPA episodes paid to an HHA for   outlier episodes. |
| Average   Age                                                | Average   age of beneficiaries. Beneficiary age is calculated at the end of the   calendar year or at the time of death. |
| Male   Beneficiaries                                         | Number   of male beneficiaries.                              |
| Female   Beneficiaries                                       | Number   of female beneficiaries.                            |
| Nondual   Beneficiaries                                      | Number   of Medicare beneficiaries qualified to receive Medicare only benefits.   Beneficiaries are classified as Medicare only entitlement if they received   zero months of any Medicaid benefits (full or partial) in the given calendar   year. |
| Dual   Beneficiaries                                         | Number   of Medicare beneficiaries qualified to receive Medicare and Medicaid   benefits. Beneficiaries are classified as Medicare and Medicaid entitlement   if in any month in the given calendar year they were receiving full or   partial Medicaid benefits. |
| White   Beneficiaries                                        | Number   of non-Hispanic white beneficiaries.                |
| Black   Beneficiaries                                        | Number   of non-Hispanic black or African American beneficiaries. |
| Asian   Pacific Islander Beneficiaries                       | Number   of Asian Pacific Islander beneficiaries.            |
| Hispanic   Beneficiaries                                     | Number   of Hispanic beneficiaries.                          |
| American   Indian or Alaska Native    Beneficiaries          | Number   of American Indian or Alaska Native beneficiaries.  |
| Other/   Unknown Beneficiaries                               | Number   of beneficiaries with race not elsewhere classified. |
| Average   HCC Score                                          | Average   Hierarchical Condition Category (HCC) risk score of beneficiaries. Please   refer to the “Additional Information” section of the Methodology document for   more details on HCC risk scores. |
| Percent   of Beneficiaries with Atrial    Fibrillation       | Percent   of beneficiaries meeting the CCW chronic condition algorithm for atrial   fibrillation. |
| Percent   of Beneficiaries with Alzheimer's                  | Percent   of beneficiaries meeting the CCW chronic condition algorithm for Alzheimer’s,   related disorders, or dementia. |
| Percent   of Beneficiaries with Asthma                       | Percent   of beneficiaries meeting the CCW chronic condition algorithm for Asthma. |
| Percent   of Beneficiaries with Cancer                       | Percent   of beneficiaries meeting the CCW chronic condition algorithms for cancer.   Includes breast cancer, colorectal cancer, lung cancer and prostate cancer. |
| Percent   of Beneficiaries with CHF                          | Percent   of beneficiaries meeting the CCW chronic condition algorithm for heart   failure. |
| Percent   of Beneficiaries with Chronic Kidney Disease       | Percent   of beneficiaries meeting the CCW chronic condition algorithm for chronic   kidney disease. |
| Percent   of Beneficiaries with COPD                         | Percent   of beneficiaries meeting the CCW chronic condition algorithm for chronic obstructive   pulmonary disease. |
| Percent   of Beneficiaries with Depression                   | Percent   of beneficiaries meeting the CCW chronic condition algorithm for depression. |
| Percent   of Beneficiaries with Diabetes                     | Percent   of beneficiaries meeting the CCW chronic condition algorithm for diabetes. |
| Percent   of Beneficiaries with Hyperlipidemia               | Percent   of beneficiaries meeting the CCW chronic condition algorithm for   hyperlipidemia. |
| Percent   of Beneficiaries with Hypertension                 | Percent   of beneficiaries meeting the CCW chronic condition algorithm for   hypertension. |
| Percent   of Beneficiaries with IHD                          | Percent   of beneficiaries meeting the CCW chronic condition algorithm for ischemic   heart disease. |
| Percent   of Beneficiaries with Osteoporosis                 | Percent   of beneficiaries meeting the CCW chronic condition algorithm for   osteoporosis. |
| Percent   of Beneficiaries with RA/OA                        | Percent   of beneficiaries meeting the CCW chronic condition algorithm for rheumatoid   arthritis/osteoarthritis. |
| Percent   of Beneficiaries with Schizophrenia                | Percent   of beneficiaries meeting the CCW chronic condition algorithm for   schizophrenia and other psychotic disorders. |
| Percent   of Beneficiaries with Stroke                       | Percent   of beneficiaries meeting the CCW chronic condition algorithm for stroke. |
Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
