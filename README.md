# 📈 Applied Design of Experiments in Optics with R

Companion R code for [SPIE](https://spie.org/) DOE courses and book form [Dr. Sergey M. Nikitin](https://spie.org/profile/Sergey.Nikitin-125233)

![demo1](https://github.com/smnikitin/DOE_R/blob/main/images/DOE2_git.PNG)  <!-- Replace with your own demo image or GIF -->

This repository serves as the code library for applying Design of Experiments (DOE) to optical engineering. It provides practical exercises required to run statistical models, evaluate experimental designs, and optimize performance of complex optical systems and processes:

- **Full and Fractional Factorial**
- **Screening design**
- **Noise reduction**
- **Local Experiments** 
- **Response Surface Methodology**

---

## 📚 Associated Courses & Publications
This material is developed in support of the following SPIE courses and publications:

* **Book:** *Data-Driven Optimization of Optical Systems and Processes [WIP]*
* **SPIE Courses:**
    * [SC1347](https://spie.org/courses/SC1347/)
    * [SC1356](https://spie.org/courses/SC1356/)
    * [SC1366](https://spie.org/courses/SC1366/)

## 📦 Requirements

- [Google Colab](https://colab.research.google.com/)  (free, cloud-based Jupyter notebook for running R code directly in your browser)
- R and RStudio (optional, but highly recommended)
- Required R Packages: https://github.com/smnikitin/DOE_R/blob/main/examples/installation

## ✨ Features

- **Reproducible R Scripts:** Standalone code to plan and analyze experiments.

## 🛠️ Installation and How to Run

- Make sure you are logged into your Google account to run Google Colab.
- To run the examples in this repository, copy and paste the code into a Google Colab cell

![demo2](https://github.com/smnikitin/DOE_R/blob/main/images/DOE1_git.PNG)  <!-- Replace with your own demo image or GIF -->


## 📊 Workflow: AI Microscope Case Study (2^3 Factorial)

The following sequence captures the full computational workflow for the AI Microscope case study, guiding you from experimental design to a refined predictive model.

### 1. Design Generation
We define our three critical parameters—Light Intensity (A), Lens Magnification (B), and AI Threshold (C)—at two levels (-1, 1). Using `expand.grid`, we create a balanced design matrix that ensures all factor combinations are tested.
```R

# Load these libraries before running your plotting functions
library(DoE.base)
library(FrF2) 
library(rsm)
library(pid)  
library(ggplot2)

# Generate a standard coded 2^3 full factorial design matrix
# Factors: A = Light Intensity, B = Lens Magnification, C = AI Threshold
design_matrix <- expand.grid(
  B = c(-1, 1),
  A = c(-1, 1),
  C = c(-1, 1)
)

print(design_matrix)

```

### 2. Data Collection

After physically executing the experiments on the AI Microscope according to our randomized design, we compile the results. We combine our original design matrix with the observed Accuracy response (Y) to create the final analytical dataset.

```R
# Physical feature detection accuracy results from laboratory runs
Accuracy <- c(87.49, 99.01, 94.64, 91.97, 83.12, 83.12, 81.16, 97.32)

# Combine the design matrix and response into the final analysis dataset
optics_data <- cbind(design_matrix, Accuracy)

print(optics_data)

```

### 3. Model Fitting & Visualization

We fit a linear model to the data to evaluate the influence of main factors and their interactions. We then generate visual diagnostics to intuitively understand which variables dominate system performance.

```R
# Fit the full interaction model using numeric indicators for Pareto sorting
doe_model <- lm(Accuracy ~ A * B * C, data = optics_data)

# Generate the Pareto plot to rank the magnitude of effects
paretoPlot(doe_model,
           main = "Step 4: Pareto Plot of absolute Effects",
           xlab = "Factor / Interaction Term",
           ylab = "Magnitude of Coefficient")

# Generate the Main Effects plot to see the direction of influence
MEPlot(doe_model,
       pch = 15,
       lwd = 2,
       las = 1,
       main = "Step 5: Main Effects Plot (Fitted Means)")

# Generate the multi-paneled cross-interaction matrix to visualize factor coupling
IAPlot(doe_model,
       col = c("black", "gray50"),
       lty = c(1, 2),
       lwd = 2,
       main = "Step 6: Interaction Plot Matrix")

```

### 4. Statistical Tables

We extract the regression details and ANOVA table to quantify the statistical significance of our factors. This confirms whether our observations are true effects or just random noise within the system.

```R
# Display the standard regression table details
print(summary(doe_model))

# Display the ANOVA table showing partitioned sum of squares
doe_model_factor <- lm(Accuracy ~ factor(A) * factor(B) * factor(C), data = optics_data)
print(anova(doe_model_factor))

```

### 5. Model Optimization

To maximize predictive accuracy, we perform model reduction by dropping non-significant interaction terms (A:B and B:C). This "pruning" removes mathematical dead weight, resulting in a cleaner, more reliable model.

```R
# Drop the non-significant interaction terms to claim error degrees of freedom
model_reduced <- lm(Accuracy ~ A + B + C + A:C + A:B:C, data = optics_data)

# Print the final cleaned model coefficients, R-squared values, and p-values
print(summary(model_reduced))

# Print the functional ANOVA table containing populated F-values and p-values
print(anova(model_reduced))

```


## 📂 Project Structure

```text
doe-book/
│
├── data/             # Cleaned .csv datasets for all chapters
├── scripts/          # Standalone .R scripts for rapid analysis
├── tutorials/        # Interactive .Rmd files aligned with book chapters
├── README.md         # Project documentation
└── LICENSE           # MIT License

```



## 🧠 Behind the Scenes

* **Statistical Computing:** Powered by R's native linear modeling (`lm()`) and specialized DOE packages.
* **Methodology:** Bridging the gap between theoretical math (like quadratic interaction models) and applied engineering optimization.
* **Design:** Focused on readable code, reproducible research, and clear data visualization.



## ⚡ Future Improvements

* Adding advanced fractional factorial aliasing examples.
* Expanding the datasets to include more complex optimization metrics.



## 🧑‍💻 Author

* Sergey Nikitin


## 📜 License

The code in this project is licensed under the [MIT License](https://www.google.com/search?q=LICENSE). 



## 🙌 Credits

Inspired by the need for clear, accessible, and applied statistical engineering education.



## 🤝 Contributing

Suggestions, feedback, and pull requests from students and colleagues are welcome!

Let’s make do DOE better together. ✨
