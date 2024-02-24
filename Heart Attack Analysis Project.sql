SELECT * FROM heartdisease.heart;
Question1: What are the basic statistics for age, resting blood pressure, 
cholesterol, and maximum heart rate in the dataset?

SELECT
    AVG(Age) AS AverageAge,
    MIN(Age) AS MinAge,
    MAX(Age) AS MaxAge,
    AVG(RestingBP) AS AverageRestingBP,
    MIN(RestingBP) AS MinRestingBP,
    MAX(RestingBP) AS MaxRestingBP,
    AVG(Cholesterol) AS AverageCholesterol,
    MIN(Cholesterol) AS MinCholesterol,
    MAX(Cholesterol) AS MaxCholesterol,
    AVG(MaxHR) AS AverageMaxHR,
    MIN(MaxHR) AS MinMaxHR,
    MAX(MaxHR) AS MaxMaxHR
FROM heartdisease.heart;

Question: How many cases of heart disease are there for each gender 
in the dataset?

SELECT
    Sex,
    COUNT(*) AS HeartDiseaseCases
FROM  heartdisease.heart
WHERE HeartDisease = 1
GROUP BY Sex;

Question 3: What is the average cholesterol level for each type of chest pain?

SELECT
    ChestPainType,
    AVG(Cholesterol) AS AverageCholesterol
FROM heartdisease.heart
GROUP BY ChestPainType;

Question 4: What percentage of cases have exercise-induced angina?

SELECT
    (COUNT(CASE WHEN ExerciseAngina = 1 THEN 1 END) * 100.0 / COUNT(*)) AS PercentageWithExerciseAngina
FROM heartdisease.heart;

Question: Which cases have an abnormal ST slope?
SELECT
    *
FROM heartdisease.heart
WHERE ST_Slope != 'Normal';

Question 6: What is the average Oldpeak value for each type of resting ECG?

SELECT
    RestingECG,
    AVG(Oldpeak) AS AverageOldpeak
FROM heartdisease.heart
GROUP BY RestingECG;
