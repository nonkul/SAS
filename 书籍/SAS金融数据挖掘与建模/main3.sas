proc import datafile='/folders/myfolders/SAS-Law/书籍/SAS金融数据挖掘与建模/信用卡客户精准营销案例/Credit Card Marketing.csv'
dbms=csv out=data;run;
*delete duplicate id;
proc sort data=data out=data1 dupout=dup1 nodupkey;
by id;run;