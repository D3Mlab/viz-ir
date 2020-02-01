## SUMMARY & USAGE LICENSE

This twitter dataset  was collected by the D3M Research Group at the University of Toronto.

The dataset consisted initialy into a corpus  of  approximately  1  billion tweets crawled from the Twitter streaming API during 2013 and 2014 in which we selected a subset of tweets with the following restrictions:

1. The dataset was restricted to users located within the US.
2. Non-English tweets were filtered out.
3. We extracted tweets related to the 12 natural disasters described bellow – which are temporally andgeographically disjoint – to use as ground truth clusters.
4. We removed tweets related to other known natural disasters, which was necessary to create unambiguous correct answers for purposes of our user study.


||Type|Location|Date|#tweets|
|-|-|-|-|-|
|1|Flood|Colorado|September 9, 2013|100|
|2|Storm|Florida|June 9, 2013|181|
|3|Earthquake|California (L.A.)|March 17, 2014|98|
|4|Earthquake|California (Napa)|August 24, 2014|206|
|5|Tornado|Oklahoma|May 20, 2013|319|
|6|Hurricane|North Carolina|July 1, 2014|98|
|7|Blizzard|New York (NYC)|February 11, 2014|243|
|8|Blizzard|New York (Buffalo)|November 13, 2014|99|
|9|Blizzard|Massachusetts (Boston)|February 6, 2014|201|
|10|Drought|California|December, 2013|100|
|11|Tornado|Mississippi|February, 2013|50|
|12|Flood|Michigan|August, 2014 |49|

The final dataset consists of 1,744 positive examples (tweets related to 12 different natural disasters) as well as 34,411 negative examples (other tweets).


Neither the University of Toronto nor any of the researchers involved can guarantee the correctness of the data, its suitability for any particular purpose, or the validity of results based on the use of the data set.  The data set may be used for any research purposes under the following conditions:

* The user may not state or imply any endorsement from the University of Toronto or the D3M Research Group.

* The user must acknowledge the use of the data set in publications resulting from the use of the data set (see below for citation information).

* The user may not redistribute the data without separate permission.

* The user may not use this information for any commercial or revenue-bearing purposes without first obtaining permission  from Scott Sanner at the University of Toronto.

If you have any further questions or comments, please contact Prof. Scott Sanner
(<ssanner@mie.utoronto.ca>). 

## CITATION

To acknowledge the use of the dataset in publications, please cite the
following paper:
* A Longitudinal Study of Topic Classification on Twitter. Zahra Iman, Scott Sanner, Mohamed Reda Bouadjenek, and Lexing Xie. The 11th International AAAI Conference on Web and Social Media (ICWSM 2017).


## PUBLISHED WORK THAT HAS USED THIS DATASET

* A Longitudinal Study of Topic Classification on Twitter. Zahra Iman, Scott Sanner, Mohamed Reda Bouadjenek, and Lexing Xie. The 11th International AAAI Conference on Web and Social Media (ICWSM 2017).
* Relevance-driven Clustering for Visual Information Retrieval on Twitter. Mohamed Reda Bouadjenek and Scott Sanner. CHIIR '19: Proceedings of the 2019 Conference on Human Information Interaction and Retrieval, March 10–14, 2019, Glasgow, United Kingdom.

## DETAILED DESCRIPTION OF THE DATA FILE

This dataset consists of a tab separated list of:
* Timestamp (milliseconds since 1/1/1970 UTC).
* User id.
* Latitude coordinate (specifies the north–south position).
* Longitude coordinate (specifies the east–west position).
* Label (Pos1-12 for the corresponding natural disaster or Neg for a nagative example).
* Tweets content.

