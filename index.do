<<dd_version: 2>>     
<<dd_include: header.txt>>

# Homework 4  

### Yawen Zhou, MBBS (MHS Candidate)

**Background:** 
In homework 4, we performed a data simulation process and visualized the simulated data distribution via histogram.


**Methods:** 
We first set the number of observations in the dataset to 30, and then generated an "age" variable with a mean of 57 years and a standard deviation of 15 from normal distribution, and an "age_t" variable with the same mean and standard deviation from t distribution. To visualize the simulated data, we created two histograms showing the distribution of "age" (shown in orange) and "age_t" (shown in blue) overlaid by a theoretical normal distribution curve.
   

```
<<dd_do:nooutput>>
clear

set obs 30

gen age = (rnormal() * 15) + 57
gen age_t=(rt(_N)*15)+57

hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  ) ///
	note("Based on simulated data", size(small)) 
graph export hw4_histogram.png, replace

<</dd_do>>
```

<<dd_graph>>

```

<<dd_do>>


<</dd_do>>
```

```
<<dd_do>>
display c(N) 
display c(k)  
list in 1/5 
<</dd_do>>
```

**Results:** 
The histogram (orange) sampled from normal distribution follows the distribution of ${Age, years} \sim \mathcal{N}(\mu = 57, \sigma^2 = 225)$. It looks normally distributed approximately in line with the theoretical normal curve. The histogram (blue) sampled from t distribution follows the distribution of ${Age, years} \sim t(30)$ scaled by 15 and shifted by 57. It does not look normally distributed.






