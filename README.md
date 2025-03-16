# Colon Survival Analysis

This repository contains a comprehensive survival analysis on the Colon Cancer dataset using both nonparametric and semi‐parametric methods. The analyses are split into multiple R Markdown files, and the corresponding model outputs are provided as PDFs.

---

## Repository Structure

```
.
├── LICENSE
├── Nonparametric comparison of 2 or more groups.Rmd
├── Nonparametric estimation of survival for one or more groups.Rmd
├── Semi-parametric Cox regression model 1.Rmd
├── Semi-parametric Cox regression model 2.Rmd
├── [Model outputs] Nonparametric comparison of 2 or more groups.pdf
├── [Model outputs] Nonparametric estimation of survival for one or more groups.pdf
├── [Model outputs] Semi-parametric Cox regression model 1.pdf
└── [Model outputs] Semi-parametric Cox regression model 2.pdf
```

---

## Overview

This project analyzes the Colon Cancer dataset from the `survival` package in R to evaluate survival outcomes and identify key prognostic factors. The analysis includes:

- **Nonparametric Survival Estimation:**  
  Generating Kaplan–Meier survival curves to estimate overall survival and survival by treatment groups.

- **Nonparametric Group Comparison:**  
  Employing log-rank tests and pairwise comparisons to assess differences among treatment groups.

- **Semi-Parametric Cox Regression:**  
  Fitting Cox proportional hazards models to quantify the effects of clinical covariates (e.g., age, tumor obstruction, lymph node involvement) on survival.

---

## Files Description

- **R Markdown Files (.Rmd):**  
  These files contain the complete code and narrative for each part of the analysis:
  - `Nonparametric comparison of 2 or more groups.Rmd`
  - `Nonparametric estimation of survival for one or more groups.Rmd`
  - `Semi-parametric Cox regression model 1.Rmd`
  - `Semi-parametric Cox regression model 2.Rmd`

- **Model Output PDFs:**  
  These PDFs present the rendered outputs (plots, tables, and model summaries) from the corresponding R Markdown files:
  - `[Model outputs] Nonparametric comparison of 2 or more groups.pdf`
  - `[Model outputs] Nonparametric estimation of survival for one or more groups.pdf`
  - `[Model outputs] Semi-parametric Cox regression model 1.pdf`
  - `[Model outputs] Semi-parametric Cox regression model 2.pdf`

- **LICENSE:**  
  This repository is licensed under the MIT License.

---

## Requirements

- **R (version 3.6 or higher)**
- R packages: `survival`, `mice`, `dplyr`, `ggplot2`, `kableExtra`, `tableone`
- A PDF viewer for reviewing the model output PDFs

---

## Installation and Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/colon-survival-analysis.git
   cd colon-survival-analysis
   ```

2. **Open the R Markdown Files:**
   - Open the `.Rmd` files in RStudio (or your preferred R environment) to review the code and run the analysis.
   - Each R Markdown file corresponds to a specific analysis section (nonparametric estimation, group comparisons, and Cox regression).

3. **Review the Outputs:**
   - The rendered model output PDFs (located in the `[Model outputs]` folder) provide comprehensive details of the analysis, including plots and tables.

---

## Contributing

Contributions and suggestions are welcome! Please feel free to open issues or submit pull requests to help improve this project.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

For additional details, please refer to the individual R Markdown files and their corresponding model output PDFs.
