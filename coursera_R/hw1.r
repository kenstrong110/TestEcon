#��õ�ǰ�Ĺ���·��
getwd()

#�����Լ��Ĺ���·��
setwd("F:/rfiles/coursera")

#�ڹ���·���¶�ȡ���ݣ�seq�д��������Զ��ŷָ�������csv�ĵĹ���
hw<-read.table("hw1_data.csv",header=T,sep=",")

#�鿴����
fix(hw)

#��ȡ����,�ǵ����Ҫdetach()
attach(hw)

#11:colnames
colnames(hw)

#12:first two rows
hw[1:2,]
#or 
head(hw,2)

#13: number of rows
nrow(hw)

#14: last two rows
hw[152:153,]

#15: 47 row of Ozone
Ozone[47]

#16: number of missing values
sum(is.na(Ozone))


#17: mean of Ozone except for missing values
Ozone_1<-Ozone[!is.na(Ozone)]
mean(Ozone_1)

#18:
sub_Ozone=!is.na(Ozone)&Ozone>31
sub_Temp= !is.na(Temp)& Temp >90
sub=sub_Ozone&sub_Temp
mean(Solar.R[sub])

#19��
mean(Temp[Month==6])

#20��
sub_2= Month==5 & !is.na(Ozone)
max(Ozone[sub_2])

#
detach(hw)




