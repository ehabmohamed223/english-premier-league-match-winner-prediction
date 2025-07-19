# English Premier League Match Winner Prediction
**A Machine Learning Project to Predict the Winning Team in EPL Matches (2020–2022)**

![SAS Studio](https://img.shields.io/badge/SAS%20Studio-Used-blue?style=for-the-badge&logo=sas&logoColor=white)
![SAS Viya](https://img.shields.io/badge/SAS%20Viya-ML%20Platform-blueviolet?style=for-the-badge&logo=sas&logoColor=white)

---

## **1.Project Overview**


This project analyzes the performance of English Premier League (EPL) teams between **September 12, 2020**, and **April 25, 2022**, using historical match data. It explores the impact of various features such as goals, possession, expected goals (xG), and referee influence to build machine learning models that predict the winner of a match.
---

## **2.Machine Learning Models Used**
- **Random Forest Classifier**
- **Gaussian Processes Classification**

---

##  **3.Dataset Overview**

- **Total Matches:** 1,389  
- **Time Range:** September 12, 2020 – April 25, 2022  
- **Features:** 27 
- **Target Variable:** `target` – Binary classification (1 = Win, 0 = Not Win)
---



## **4.Project Goals**

- Analyzing the **impact of home vs. away games** on match outcomes.
- Investigating **referee bias** in the league.
- Studying team performance using metrics like:
  - Goals For (GF) and Against (GA)
  - Shots on Target (SoT)
  - Expected Goals (xG)
  - Possession
- Building and evaluating **machine learning models** to predict the winner of EPL matches.

---

## **5.Comprehensive Descriptive Analysis of EPL Teams (Season 2020–2022)**


<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/f604a733-4efe-4696-91ac-e4db2ca2da68" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/79dbb3dd-aa2b-4c2d-b248-8f5d860cf330" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/317b878c-8b33-488a-a408-1a4983fdefcd" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/69523511-7a6f-48db-84a8-d80fe5bd6572" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/e395ad9b-b1ee-4a97-8c92-e6ab98156aee" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/8a4e46ae-2e5d-49a0-b33f-34121fa6d160" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/c5beebcf-2760-4a16-be0c-e1f49a144a63" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/a7b20f0c-395a-4054-ad2a-c935ab600c36" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/59775091-6557-413f-b646-12bb913b6f60" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/c3cd805b-0387-4757-b886-af5660fc435e" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/8a96a8df-95ab-4143-8be8-6404309cc962" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/0a8fb8c8-7aee-492d-a149-3248bdc569ea" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/83c6d472-dc01-4769-a01b-b5fa76d7e44e" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/81f78bbb-33a6-4f71-a29d-db28cae7ea04" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/80ea2ad6-e993-4f0a-8b6a-8255f982a423" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/7d9711f1-9771-4445-b159-aa260d2edae0" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/b1bd644e-b6c3-4ed6-a4bc-8e51beaa4ada" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/5acb45d4-787f-4cc6-b101-5559564965f6" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/d50dad20-c73a-4d84-9552-7da5e2380c5a" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/d79d18e8-3b18-401a-9d54-ed932236a20c" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/dd70913d-7dc8-40ee-aefd-2fe695fc9a7e" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/9f5bd97c-af27-461f-9cc1-c437d70fa8f2" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/a372ff18-8701-4818-bad9-0c2bbda2b2c3" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/6dacf26d-0d28-4101-9aab-2e9ae90f6a0e" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/91e7cbf2-ff3e-4d94-9065-319ad0922ec1" width="500"/></td>
    <td><img src="https://github.com/user-attachments/assets/3baef7b5-1a1b-4b94-948e-0f5b472b1b17" width="500"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/ecc5c41e-c938-433d-a415-e508f4b09bfd" width="500"/></td>
  </tr>
</table>



## **6.Key Insights**

### **6.1 Home Advantage: A Fortress or a Myth?**

The magic of a home stadium — the familiar turf, the roaring crowd, the comfort of sleeping in your own bed. But does it really make a difference?

Analysis confirmed what many suspected: home advantage is real.
- Teams scored **963 goals at home**, compared to just **892 away**.  
- They also conceded fewer goals at home (**925**) than on the road (**993**).  
- Shots on target and possession were both higher when teams played in their own stadium.

This shows that playing at home provides teams a psychological and tactical edge. It’s not just about luck — it’s about control.

---

### **6.2 The Referee’s Shadow: Fair or Favorable?**

Referees are often the most controversial figures in a match. But could they be influencing outcomes more than expected?

The performance of **20+ referees** across more than **1,300 matches** was analyzed. Key findings:

- Some referees managed **over 100 matches**, while others appeared only a few times.  
- There were variations in how many free kicks and penalties were awarded under different referees.  

While no strong evidence of bias toward specific teams was found, the patterns were noticeable — especially in high-stakes matches. This suggests that referees do have an impact, and although striving for fairness, their decisions can subtly tip the balance.

---

### **6.3 Penalties: The Pressure Test**

When the whistle blows and the crowd holds its breath, few moments in football are as dramatic as a penalty kick.
Analysis of penalty success rates across all teams revealed a striking trend:

- **Top 6 teams** converted **73.65%** of their penalties.  
- Other teams managed only **26.34%**.  

This shows that elite teams are not only better at scoring goals but also excel under pressure — a crucial trait in tight matches where one penalty can decide everything.

---


## 7.Machine Learning Models

This project aims to develop a data-driven predictive framework to forecast the winning team in English Premier League (EPL) matches using historical match data from September 12, 2020 , to April 25, 2022 .



### **7.1xG/xGA: The Hidden Power Behind the Scoreboard**

In this project, xG/xGA became the stars of the show:

- Strong correlation observed between xG and actual goals scored.  
- After adding xG and xGA (Expected Goals Against) to the models, performance improved significantly.  
- The **Random Forest model** improved from **59% to 78% accuracy** in validation after including these features.  

This indicates that xG is not just a fancy stat — it’s a powerful predictor of match outcomes. Teams that create high-quality chances, even if not always converted, are more likely to win in the long run.

---

###  **7.2 Model Performance Breakdown**

| Model                        | Validation Accuracy | Validation Correct | Test Accuracy | Test Correct |
|-----------------------------|---------------------|--------------------|---------------|--------------|
| Random Forest (Baseline)    | 59.23%              | 246 / 417          | 53.24%        | 74 / 139     |
| Gaussian Processes (Baseline)| 61.15%             | 255 / 417          | 61.15%        | 85 / 139     |
| Random Forest + xG/xGA      | **77.94%**          | 325 / 417          | **72.66%**    | 101 / 139    |
| Gaussian Processes + xG/xGA | **75.54%**          | 316 / 417          | **72.66%**    | 101 / 139    |

---

### **What Does This Mean?**

- The **validation set** contains 417 unseen matches, and the **test set** includes 139 completely new matches.
- Before adding Expected Goals (xG) and Expected Goals Against (xGA), models struggled to predict match outcomes accurately.
- After incorporating xG and xGA:
  - **Random Forest** improved from **59.23% to 77.94%** in validation accuracy.
  - **Gaussian Processes** improved from **61.15% to 75.54%**.
  - Both models reached **72.66%** accuracy on the test set — a substantial gain in real-world prediction power.

---

###  **Why Does This Matter?**

Even with a **72.66%** accuracy, the models provide strategic value to multiple stakeholders:

- **Coaches & Analysts**: Gain insight into key factors (like xG) influencing outcomes to improve tactics.
- **Fantasy Football Players**: Make smarter selections based on predictive analytics.
- **Sports Betting Platforms**: Refine odds and reduce risk through stronger models.
- **Fans & Media**: Access richer narratives and performance explanations.

---

###  **Conclusion**

- xG and xGA are highly valuable features that significantly boost predictive performance.
- Random Forest emerged as the top-performing model when enriched with these variables.
- Even modest improvements in accuracy can deliver tangible value in sports analytics.

---



