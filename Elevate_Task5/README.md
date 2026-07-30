# Task 5: Exploratory Data Analysis (EDA) on Titanic Dataset

## 📌 Objective

The objective of this project is to perform **Exploratory Data Analysis (EDA)** on the Titanic dataset using Python. The analysis helps in understanding the dataset, identifying missing values, generating summary statistics, visualizing important features, and discovering relationships among variables.

---

## 📂 Dataset

- **Dataset Name:** Titanic Dataset
- **Records:** 891
- **Features:** 12

The dataset contains passenger information such as age, gender, passenger class, fare, and survival status.

---

## 🛠️ Tools & Libraries Used

- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook
- VS Code

---

## 📊 Exploratory Data Analysis Performed

- Loaded and explored the dataset.
- Displayed the first five rows.
- Examined dataset information and data types.
- Generated descriptive statistics.
- Identified missing values.
- Analyzed passenger survival.
- Analyzed passenger class distribution.
- Analyzed gender distribution.
- Created multiple visualizations for better understanding of the data.

---

## 📈 Visualizations

The following graphs were created and saved in the **graphs** folder:

- Age Distribution Histogram
- Age Boxplot
- Survival by Gender
- Survival by Passenger Class
- Fare Distribution Histogram
- Pairplot
- Correlation Heatmap
- Age vs Fare Scatter Plot

---

## 🔍 Key Findings

- The **Age**, **Cabin**, and **Embarked** columns contain missing values.
- Most passengers were between **20 and 40 years** of age.
- Female passengers had a higher survival rate than male passengers.
- First-class passengers survived more frequently than second- and third-class passengers.
- Most passengers paid relatively low fares.
- Higher fares were generally associated with better survival.
- Passenger class and fare showed a noticeable relationship with survival.

---

## 📁 Project Structure

```
Task5_EDA/
│
├── Titanic_EDA.ipynb
├── Titanic-Dataset.csv
├── README.md
├── Task5_EDA_Report.pdf
├── graphs/
│   ├── 01_Age_Distribution.png
│   ├── 02_Age_Boxplot.png
│   ├── 03_Survival_by_Gender.png
│   ├── 04_Survival_by_Class.png
│   ├── 05_Fare_Distribution.png
│   ├── 06_Pairplot.png
│   ├── 07_Correlation_Heatmap.png
│   └── 08_Age_vs_Fare.png
```

---

## ✅ Conclusion

The Exploratory Data Analysis identified meaningful patterns and relationships in the Titanic dataset. Passenger **gender**, **class**, and **fare** were found to have a strong association with survival. The analysis also highlighted missing values that should be addressed before developing machine learning models.

---

## 👨‍💻 Author

**Kapil Kalirana**
