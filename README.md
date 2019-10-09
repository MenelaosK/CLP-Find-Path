# CLP-Find-Path
CLP program that finds a Path of a table of heights with difference of the height of the starting point with the end point being as high as possible.

Given the table of heights this program finds a path, with some constraints in play:
1)Next square of the table must be one level lower than the previous
2)Next square must be neighboring with the current.
3)The difference of the starting square height with the end square must be the max.
This program uses contraint programming and the bbmin predicate so the max difference is calculated as the 
min[(-1)*Difference].
Below is the program run in CLP eclipse 7.0, run with this table:<br>
![](https://github.com/MenelaosK/CLP-Find-Path/blob/master/tableOfHeights.png)
<br>The result path is displayed as positions of each row, for example Path=[5,4,3]
<br>5th element of the 1st row 
<br>4th element of the 2nd row
<br>3rd element of the 3rd row
<br><br>
![](https://github.com/MenelaosK/CLP-Find-Path/blob/master/findpath.png)
