# Relevance-driven Clustering for Visual Information Retrieval #
Search results of spatio-temporal data are often displayed on a map, but when the number of matching search results is large, it can be time-consuming to individually examine all results, even when using methods such as filtered search to narrow the content focus.  This suggests the need to aggregate results via a clustering method.  However, standard unsupervised clustering algorithms like <img src="https://latex.codecogs.com/svg.latex?\Large&space;k" title="\Large k" />-means (i) ignore relevance scores that can help with the extraction of highly relevant clusters, and (ii) do not necessarily optimize search results for purposes of visual presentation.  In this article, we address both deficiencies by framing the clustering problem for search-driven user interfaces in a novel optimization framework that (i) aims to maximize the relevance of aggregated content according to cluster-based extensions of standard information retrieval metrics and (ii) defines clusters via constraints that naturally reflect interface-driven desiderata of spatial, temporal, and keyword coherence that do not require complex ad-hoc distance metric specifications as in <img src="https://latex.codecogs.com/svg.latex?\Large&space;k" title="\Large k" />-means. After comparatively benchmarking the new algorithm we propose in offline experiments, we undertake a user study with 24 subjects to evaluate whether this new relevance-driven clustering method improves human performance on visual search tasks in comparison to <img src="https://latex.codecogs.com/svg.latex?\Large&space;k" title="\Large k" />-means clustering and a filtered search baseline.  Our results show that (a) our greedy optimization approach is fast, near-optimal, and extracts higher-relevance clusters than <img src="https://latex.codecogs.com/svg.latex?\Large&space;k" title="\Large k" />-means, and (b) these higher-relevance clusters that have been optimized w.r.t. user interface display constraints result in faster search task completion with a high accuracy while requiring a minimum workload for optimal effectiveness and efficiency and full satisfaction.

# Viz-TIR

The tool described in the [CHIIR 2019 paper](https://personal-sites.deakin.edu.au/~mohamedb/papers/p349-bouadjenek.pdf) can be accessed [here](http://206.12.91.26:8080/VizTIR/).





# Contacts #
For more information about this project, please contact:
* Scott Sanner: ssanner@gmail.com
* Mohamed Reda Bouadjenek: rbouadjenek@gmail.com
* Yihao Du: yihaodu.2017@gmail.com
