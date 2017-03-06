# My k-means implementation in python

I used data from https://www.uni-marburg.de/fb12/arbeitsgruppen/datenbionik/data?language_sync=1 to test my algorithm. The tetra dataset I used has 4 inherent classes which I assume from the beginning, since finding the optimal number of clusters is a subjective task. One method I know of is plotting the aggregate sum of residuals against the number of clusters, sometimes known as a "scree plot" and choose the number of clusters by the "elbow" of the graph. I avoid this since this is a practice dataset for my implementation.


## The algorithm:
(1) I assign 4 random points as starting centroids.

(2) I assign all the points in the data to the closest of the 4 centroids from (1), by calculating the 2-norm (euclidean distance) to the 4 centroids for each point in the data.

(3) For each group of points now assigned to the 4 cluster centroids, I take the mean of all the points, so that I have 4 new centroids.

(4) I repeat from (2) and (3) until the sum of squared residuals is very small (as in, the centers essentially stop changing).
