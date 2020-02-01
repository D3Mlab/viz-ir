\ Model F1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  Weight[1] + Weight[2] + Weight[3] + Weight[4] + Weight[7]
   + -0 word_Indication[b] + -0 word_Indication[c] + -0 word_Indication[d]
   + -0 word_Indication[e] + -0 word_Indication[f] + -0 word_Indication[g]
   + -0 word_Indication[h] + -0 word_Indication[i] + -0 word_Indication[j]
   + -0 word_Indication[k] + -0 word_Indication[l] + -0 word_Indication[m]
   + -0 word_Indication[n] + -0 word_Indication[o] + -0 word_Indication[p]
   + -0 word_Indication[q] + -0 word_Indication[t] + -0 word_Indication[u]
   + -0 word_Indication[v] + -0 word_Indication[w] + -0 word_Indication[x]
   + -0 word_Indication[y] + -0 word_Indication[z]
Subject To
 sum(w[i])+uC=1.0: Weight[0] + Weight[1] + Weight[2] + Weight[3]
   + Weight[4] + Weight[5] + Weight[6] + Weight[7] + Weight[8] + Weight[9]
   + 5 Sum_Indication = 1
 w[0]<=u: Weight[0] - Sum_Indication <= 0
 w[0]<=M*I(0): Weight[0] - 10000 Indication[0] <= 0
 w[0]>=u-M*[1-I(0)]: Weight[0] - 10000 Indication[0] - Sum_Indication
   >= -10000
 Weight-positive[0]: Weight[0] >= 0
 w[1]<=u: Weight[1] - Sum_Indication <= 0
 w[1]<=M*I(1): Weight[1] - 10000 Indication[1] <= 0
 w[1]>=u-M*[1-I(1)]: Weight[1] - 10000 Indication[1] - Sum_Indication
   >= -10000
 Weight-positive[1]: Weight[1] >= 0
 w[2]<=u: Weight[2] - Sum_Indication <= 0
 w[2]<=M*I(2): Weight[2] - 10000 Indication[2] <= 0
 w[2]>=u-M*[1-I(2)]: Weight[2] - 10000 Indication[2] - Sum_Indication
   >= -10000
 Weight-positive[2]: Weight[2] >= 0
 w[3]<=u: Weight[3] - Sum_Indication <= 0
 w[3]<=M*I(3): Weight[3] - 10000 Indication[3] <= 0
 w[3]>=u-M*[1-I(3)]: Weight[3] - 10000 Indication[3] - Sum_Indication
   >= -10000
 Weight-positive[3]: Weight[3] >= 0
 w[4]<=u: Weight[4] - Sum_Indication <= 0
 w[4]<=M*I(4): Weight[4] - 10000 Indication[4] <= 0
 w[4]>=u-M*[1-I(4)]: Weight[4] - 10000 Indication[4] - Sum_Indication
   >= -10000
 Weight-positive[4]: Weight[4] >= 0
 w[5]<=u: Weight[5] - Sum_Indication <= 0
 w[5]<=M*I(5): Weight[5] - 10000 Indication[5] <= 0
 w[5]>=u-M*[1-I(5)]: Weight[5] - 10000 Indication[5] - Sum_Indication
   >= -10000
 Weight-positive[5]: Weight[5] >= 0
 w[6]<=u: Weight[6] - Sum_Indication <= 0
 w[6]<=M*I(6): Weight[6] - 10000 Indication[6] <= 0
 w[6]>=u-M*[1-I(6)]: Weight[6] - 10000 Indication[6] - Sum_Indication
   >= -10000
 Weight-positive[6]: Weight[6] >= 0
 w[7]<=u: Weight[7] - Sum_Indication <= 0
 w[7]<=M*I(7): Weight[7] - 10000 Indication[7] <= 0
 w[7]>=u-M*[1-I(7)]: Weight[7] - 10000 Indication[7] - Sum_Indication
   >= -10000
 Weight-positive[7]: Weight[7] >= 0
 w[8]<=u: Weight[8] - Sum_Indication <= 0
 w[8]<=M*I(8): Weight[8] - 10000 Indication[8] <= 0
 w[8]>=u-M*[1-I(8)]: Weight[8] - 10000 Indication[8] - Sum_Indication
   >= -10000
 Weight-positive[8]: Weight[8] >= 0
 w[9]<=u: Weight[9] - Sum_Indication <= 0
 w[9]<=M*I(9): Weight[9] - 10000 Indication[9] <= 0
 w[9]>=u-M*[1-I(9)]: Weight[9] - 10000 Indication[9] - Sum_Indication
   >= -10000
 Weight-positive[9]: Weight[9] >= 0
Bounds
 Weight[0] <= 1
 Weight[1] <= 1
 Weight[2] <= 1
 Weight[3] <= 1
 Weight[4] <= 1
 Weight[5] <= 1
 Weight[6] <= 1
 Weight[7] <= 1
 Weight[8] <= 1
 Weight[9] <= 1
 Sum_Indication <= 1
Binaries
 Indication[0] Indication[1] Indication[2] Indication[3] Indication[4]
 Indication[5] Indication[6] Indication[7] Indication[8] Indication[9]
 word_Indication[b] word_Indication[c] word_Indication[d]
 word_Indication[e] word_Indication[f] word_Indication[g]
 word_Indication[h] word_Indication[i] word_Indication[j]
 word_Indication[k] word_Indication[l] word_Indication[m]
 word_Indication[n] word_Indication[o] word_Indication[p]
 word_Indication[q] word_Indication[t] word_Indication[u]
 word_Indication[v] word_Indication[w] word_Indication[x]
 word_Indication[y] word_Indication[z]
General Constraints
 keyword_Email_Con[0]: Indication[0] = OR ( word_Indication[y] ,
   word_Indication[c] , word_Indication[t] , word_Indication[o] ,
   word_Indication[f] )
 keyword_Email_Con[1]: Indication[1] = OR ( word_Indication[c] ,
   word_Indication[z] , word_Indication[k] , word_Indication[g] ,
   word_Indication[d] )
 keyword_Email_Con[2]: Indication[2] = OR ( word_Indication[i] ,
   word_Indication[e] , word_Indication[m] , word_Indication[t] ,
   word_Indication[v] )
 keyword_Email_Con[3]: Indication[3] = OR ( word_Indication[h] ,
   word_Indication[c] , word_Indication[m] , word_Indication[w] ,
   word_Indication[v] )
 keyword_Email_Con[4]: Indication[4] = OR ( word_Indication[p] ,
   word_Indication[k] , word_Indication[x] , word_Indication[l] ,
   word_Indication[d] )
 keyword_Email_Con[5]: Indication[5] = OR ( word_Indication[c] ,
   word_Indication[f] , word_Indication[v] , word_Indication[l] ,
   word_Indication[n] )
 keyword_Email_Con[6]: Indication[6] = OR ( word_Indication[n] ,
   word_Indication[b] , word_Indication[e] , word_Indication[g] ,
   word_Indication[j] )
 keyword_Email_Con[7]: Indication[7] = OR ( word_Indication[i] ,
   word_Indication[x] , word_Indication[u] , word_Indication[o] ,
   word_Indication[g] )
 keyword_Email_Con[8]: Indication[8] = OR ( word_Indication[q] ,
   word_Indication[b] , word_Indication[e] , word_Indication[w] ,
   word_Indication[g] )
 keyword_Email_Con[9]: Indication[9] = OR ( word_Indication[y] ,
   word_Indication[c] , word_Indication[b] , word_Indication[o] ,
   word_Indication[v] )
End
