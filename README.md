# 📈 Applied Design of Experiments (DOE) with R

Companion R code, datasets, and interactive tutorials for a comprehensive guide on **Design of Experiments (DOE)**. 

This repository provides all the practical exercises required to run statistical models, evaluate experimental designs, and optimize systems through:
- **Full and Fractional Factorial** setups,
- **Local Experiments** for stepwise optimization,
- **Response Surface Methodology (RSM)** for modeling complex surfaces and generating contour plots.
# 📈 Applied Design of Experiments (DOE) in Optics & Photonics with R

Companion R code, datasets, and interactive tutorials for the book: **"Data-Driven Optimization of Optical Systems and Processes."**

This repository serves as the official code library for applying Design of Experiments (DOE) to optical engineering. It provides practical exercises required to run statistical models, evaluate experimental designs, and optimize performance in complex optical systems:

- **Full and Fractional Factorial**,
- **screening design**,
- **noise reduction**
- **Local Experiments** 
- **Response Surface Methodology (RSM)**.

---

## 📚 Associated Courses & Publications
This material is developed in support of the following SPIE courses and publications:

* **Book:** *Data-Driven Optimization of Optical Systems and Processes*
* **SPIE Courses:**
    * [SC1347](https://spie.org/courses/SC1347/)
    * [SC1356](https://spie.org/courses/SC1356/)
    * [SC1366](https://spie.org/courses/SC1366/)

## 📦 Requirements

- R (version 4.0 or higher recommended)
- RStudio (optional, but highly recommended for `.Rmd` tutorials)
- Required R Packages: `DoE.base`, `FrF2`, `rsm`, `ggplot2`

## ✨ Features

- **Reproducible R Scripts:** Standalone code to analyze your own 2^k factorial experiments.
- **Interactive Tutorials:** R Markdown files that explain the statistical theory right next to the executable code.
- Automatically **calculate regression coefficients** for interaction models:

$$Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \beta_{12} X_1 X_2$$

- Visualize:
  - **Main effects** and **Interaction effects** plots,
  - **Pareto charts** of absolute effects,
  - **Contour and 3D surface plots** for RSM.


## 🛠️ Installation

Make sure you have R installed on your system.

To run the examples in this repository, open R or RStudio and install the required statistical packages by running:

```R
install.packages(c("DoE.base", "FrF2", "rsm", "ggplot2"))

```



## 🚀 How to Run

Clone the repository to your local machine:

```bash
git clone [https://github.com/your-username/doe-book.git](https://github.com/your-username/doe-book.git)

```

1. Open the downloaded folder in RStudio by clicking the `.Rproj` file (if included).
2. Navigate to the `/tutorials` folder.
3. Open any `.Rmd` file and click **"Run All"** to execute the chunks and view the DOE outputs.



## 📊 Example: 2x2 Factorial Design

Given standard coded inputs:

| X1 | X2 | Y (Yield) |
| --- | --- | --- |
| -1 | -1 | 14.3 |
| 1 | -1 | 22.1 |
| -1 | 1 | 16.5 |
| 1 | 1 | 35.8 |

The provided R scripts will calculate the ANOVA table, determine significant factors, extract the fitted regression model, and generate the interaction plots.



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
