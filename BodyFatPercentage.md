BodyFatPercentage application
========================================================
author: Thomas MARTIN
date: 12/04/2016

Table of Contents
========================================================

- Global description of the application
- Formulae
- Limitation & Medical disclaimer

Global description of the application
========================================================

The BodyFatPercentage application make a estimation of Body Fat Percentage from 
Weight, Height, age & sex.  

It is an improvement of BMI (Body Mass Index) as BFP take into account the age
and the sex of the person in the calculation.

For example : If the person has the following caracteristics :
weight = 85 Kg, height = 1.80, sex = male, age = 35

BMI = 26.23

BFP = 23.33

Formulae
========================================================

There is two different formulae according to age :  
(Sex = 0 for Female, 1 for Male)

If the person is a child (under or equal to 18 years old) : 

$$ 
        \begin{aligned}
        bfp = (1.51 * bmi) - (0.70 * Age) - (3.6 * Sex) + 1.4
        \end{aligned}
$$

If the person is an adult (more than 18 years old) :

$$ 
        \begin{aligned}
        bfp = (1.20 * bmi) + (0.23 * Age) - (10.8 * Sex) - 5.4
        \end{aligned}
$$

The BMI calculation :
$$ 
        \begin{aligned}
        bmi = \frac{weight}{height^2}
        \end{aligned}
$$
        
Limitation & Medical disclaimer
========================================================

This application is using a model which take into account weight, size, age and sex.
But it don't take into account the body constitution.  

If you are heavily muscular (a body builder for example), you can be classed in
average or even obese even if your real body fat is very low.

This application is not intended to be a substitute for professional medical advice, diagnosis, or treatment. Always seek the advice of your physician or other qualified health provider with any questions you may have regarding a medical condition.
