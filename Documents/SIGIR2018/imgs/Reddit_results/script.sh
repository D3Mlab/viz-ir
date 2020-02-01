awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_0.5_0.6.txt > AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_0.5_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_0.5_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_1.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_1.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_1.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_2.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_2.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_2.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_3.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_3.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_3.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_4.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_4.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_4.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_5.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_5.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_5.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_10.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_10.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_10.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_20.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_20.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_20.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_30.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_30.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_30.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_50.0_0.6.txt >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_50.0_0.6.txt  >> AUI4IR_results/scatter_plot_lambda_0.6.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_50.0_0.6.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.6.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_0.5_0.7.txt > AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_0.5_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_0.5_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_1.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_1.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_1.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_2.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_2.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_2.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_3.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_3.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_3.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_4.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_4.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_4.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_5.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_5.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_5.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_10.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_10.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_10.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_20.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_20.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_20.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_30.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_30.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_30.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_50.0_0.7.txt >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_50.0_0.7.txt  >> AUI4IR_results/scatter_plot_lambda_0.7.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_50.0_0.7.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.7.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_0.5_0.8.txt > AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_0.5_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_0.5_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_1.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_1.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_1.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_2.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_2.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_2.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_3.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_3.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_3.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_4.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_4.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_4.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_5.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_5.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_5.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_10.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_10.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_10.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_20.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_20.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_20.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_30.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_30.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_30.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_50.0_0.8.txt >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_50.0_0.8.txt  >> AUI4IR_results/scatter_plot_lambda_0.8.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_50.0_0.8.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.8.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_0.5_0.9.txt > AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_0.5_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_0.5_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_1.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_1.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_1.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_2.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_2.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_2.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_3.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_3.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_3.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_4.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_4.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_4.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_5.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_5.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_5.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_10.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_10.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_10.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_20.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_20.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_20.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_30.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_30.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_30.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_50.0_0.9.txt >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_50.0_0.9.txt  >> AUI4IR_results/scatter_plot_lambda_0.9.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_50.0_0.9.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_0.9.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_0.5_1.0.txt > AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_0.5_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_0.5_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_1.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_1.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_1.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_2.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_2.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_2.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_3.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_3.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_3.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_4.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_4.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_4.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_5.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_5.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_5.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_10.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_10.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_10.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_20.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_20.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_20.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_30.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_30.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_30.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

awk -F '\t' '{print $8"\t"$9"\t"($8-$9)^2}' AUI4IR_results/performance_posrate_50.0_1.0.txt >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $12"\t"$13"\t"($12-$13)^2}' AUI4IR_results/performance_posrate_50.0_1.0.txt  >> AUI4IR_results/scatter_plot_lambda_1.0.txt
awk -F '\t' '{print $16"\t"$17"\t"($16-$17)^2}' AUI4IR_results/performance_posrate_50.0_1.0.txt | grep -v '?' >> AUI4IR_results/scatter_plot_lambda_1.0.txt

