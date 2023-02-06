---
layout: page
title: Worksheet 1
permalink: /worksheets/ws1
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Visualizing global sea surface temperature

The National Oceanic and Atmospheric Administration (NOAA) provides publically
available climatological data sets obtained from a variety of sources,
including real-world observations, numerical model, and statistical analysis.

In this worksheet, we will analyze sea surface temperature obtained from combining numerical models with real-world data via data reanalysis (NOAA ERSSTv5), in the form of $$12$$ monthly averages for the year $$2020$$.  This data can be found in ascii format here: <a target="_parent" href="https://wcasper.github.io/math107spring2021/worksheets/ws1/ersst.v5.2020.asc">ascii data file (link)</a>.  It has been downloaded from the <a target="_parent" href="https://www.ncdc.noaa.gov/data-access/marineocean-data/extended-reconstructed-sea-surface-temperature-ersst-v5"> NOAA website (link)</a> and is also available directly in the additional resources below.

**Nerd alert:**  We should nerd out for a second.  This data is based on a **massive effort** combining huge numbers of real world observations with numerical simulations run on some of the largest supercomputers in the world.  And we get to use it.  For free.


Our objective in this worksheet is to read and analyze this data in groups.  Make sure to rely on your group partners if you get stuck!  If everyone is stuck, call for me for help.

### Step 1: load the data

The data file is called *ersst.v5.2020.asc*.  Feel free to open it up and look inside!  You should see lists of a whole heck of a lot of numbers.  As humans, it's difficult for us to deal with so many numbers at the same time, but for MATLAB, it's a piece of cake!

We want to take this data from the file and read it into MATLAB.  When we did this for images, we used the command *imread()*.   Of course this is not an image, so we'll be using the command *load()* instead.

**Important:** make sure that the data file is in the current working directory for MATLAB, just like we need to do for images!

```Matlab
sst = load("ersst.v5.2020.asc");
```

Now we have read in the data file into MATLAB, specifically into a variable we called *sst* (to represent sea surface temperature).  The data itself represents the value of the sea surface temperature on a $$2$$ degree latitude $$\times$$ $$2$$ degree longitude grid over the entire globe during any particular month of the year $$2020$$.  Of course, MATLAB doesn't know this, so it just read the whole thing in as a single long array of values.  To help us make sense of the data, we need to tell MATLAB how to reshape the array using the *reshape()* command.

```Matlab
sst = reshape(sst,180,12,89);
```

This reshapes *sst* into an $$180\times 12\times 89$$ array.  You can double-check this using the *size()* command.

```Matlab
size(sst)
```

Note that I figured out which numbers to use by reading the documentation for the data file found at the <a target="_parent" href="https://www.ncdc.noaa.gov/data-access/marineocean-data/extended-reconstructed-sea-surface-temperature-ersst-v5"> NOAA website (link)</a>.
Now the array is formed so that *sst(k,m,j)* represents the average sea surface temperature at latitude $$2j$$ and longitude $$2k$$ in the $$m$$'th month of the year $$2020$$.

The fact that the first indexing is longitudes, then months, then latitudes is bothersome.  To me, it seems more natural for the indices to be latitudes, then longitudes, then months.  To change this I can use the *permute()* command.

```Matlab
sst = permute(sst,[3,1,2]);
```

This reorders the indices so that *sst(j,k,m)* is the average sea surface temperature at latitude $$2j$$ and longitude $$2k$$ in the $$m$$'th month of the year 2020.


### Step 2: Understand the data

If we carefully read the information provided on the NOAA website, we discover

* the temperature units are in terms of $$0.01\deg C$$
* places where there is no sea surface temperature (ie. land) are set to value $$-9999$$

In MATLAB, we have another way to tell the computer that there is no value at a spot, using the data value NaN (short for not a number).  Let's change the value of sst at land points from -9999 to NaN.  To do this, we can run the command

```Matlab
land_pos = sst==-9999     % generates a list of indices (ie. places) where sst is equal to -9999
sst(land_pos) = NaN       % sets sst at the land positions equal to NaN
```

We can also convert the sea surface temperature data to usual celsius by using **scalar multiplication**.  We multiply by a factor of $$0.01$$.

```Matlab
sst = 0.01*sst
```

### Step 3: Visualizing the data

To visualize the data, we can plot it.  One nice plotting function for this kind of data is a contour plot, which generates a kind of topographical figure showing the temeratures at various positions.  To create a contour plot of the sea surface temperature in January, run the code

```Matlab
contourf(sst(:,:,1))
```

You should notice that the familiar shapes of some continents are present, showing omitted values where there is land.

**Remark:** The careful observer will notice that at some places the sea surface temperature is below $$0$$, even though water supposedly freezes at $$0$$ degrees celsius.  It turns out that the presence of salt lowers the freezing temperature of water is about $$-1.8$$ degrees celsius.  Notice, no temperatures are colder than this as they would actuall be frozen!

To understand numerically what the colors represent, use the colorbar command to add a color bar to the figure.

```Matlab
colorbar
```

If we want an even more detailed contour plot, we can add more contour levels.  The following creates a contour plot of the sea surface temperature in July with $$100$$ contour levels

```Matlab
contourf(sst(:,:,7),100)
```

You will have to rerun colorbar to generate the color bar for this new plot.

If we want to see more than one, we can use **subplots**.

For example, the following command creates plots for January, April, July, and October and plots them in the same window in a $$2\times 2$$ grid and labels which is which

```Matlab
subplot(2,2,1)
contourf(sst(:,:,1),100)
xlabel("January")
subplot(2,2,2)
contourf(sst(:,:,4),100)
xlabel("April")
subplot(2,2,3)
contourf(sst(:,:,7),100)
xlabel("July")
subplot(2,2,4)
contourf(sst(:,:,10),100)
xlabel("October")
```

## Analyze the sea surface temperature

### Maximum temperature

To get the maximum sea surface temperature for a particular monthly average, we can use the max() function.

Remember if $$A$$ is a matrix, then 

```Matlab
max(A)
```

creates a row vector whose entries are the maximums of each column of A.  Therefore

```Matlab
max(max(A))
```

takes the maximum of the maxima of the columns, which will be a single value: the largest value in the matrix $$A$$.  Thus to get the highest temperature in January vs. in July, we can use

```Matlab
max(max(sst(:,:,1)))  % highest temperature in January
max(max(sst(:,:,7)))  % highest temperature in July
```
Make sure to remember these numbers!  They may be useful for the self-assessment for this lecture.


### Average annual sea surface temperature

To get the average annual sea surface temperature in the year $$2020$$, we can average each of the sea surface temperatures over the twelve months.  Since the third index determines the month, we use the command

```Matlab
sst2020avg = mean(sst,3);
```

This makes sst2020avg into a $$89\times 180$$ array.  To see what it looks like we can use

```Matlab
contourf(sst2020avg,100);
```

To find the maximum average value of the sea surface temperature in 2020, we can then use the max() function

```Matlab
max_sst_vs_lat = max(sst2020avg);  % creates a row vector of sst values, one for every latitude
max_sst = max(max_sst_vs_lat);     % gets the maximum of the sea surface temperatures
```

Make sure to remember this number!  You will find it useful for the self-assessment for this lecture.

## Challenge problem: Ice, Ice Baby!

### Problem

You might have noticed that the lowest sea surface temperature you can find is $$-1.8\deg C$$.  We can therefore approximate that every space that is $$-1.8\deg C$$ is actually ice!  Therefore the arrays

```Matlab
ice = sst == -1.8   % location is ice
sea = sst ~= NaN    % location is ice or water
```

have the same dimensions as the sea surface temperature array, but the first has a $$1$$ in positions where there is ice and a $$0$$ in positions where there is not.  The second has a $$1$$ in positions where there is ice or water and a $$0$$ in positions where there is land.
Can you use this to estimate the percentage of the sea that is covered in ice in January?

### Solution

```
num_ice = sum(sum(ice(:,:,1)));
num_sea = sum(sum(sea(:,:,1)));
percent_ice = num_ice/num_sea
```

## Additional resources

**Sea surface temperature data for 2020:** <a target="_parent" href="https://wcasper.github.io/math107spring2021/worksheets/ws1/ersst.v5.2020.asc">ascii data file (link)</a>


