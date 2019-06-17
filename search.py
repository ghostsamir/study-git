# python version: 3.7.2
# author: bavdu
# email: bavduer@163.com
# date: 2019/06/14
# usage: closure


list16 = [23, 56, 43, 76, 1, 5, 34, 75, 37]
for i in range(len(list16)):  # ----------------------------取值范围是所有值
    for a in range(len(list16)-1):  # ----------------------------取值范围是除自己外所有值
        if list16[i] > list16[a]:  # ----------------------------取值进行比较
             # ---------------对比如果正确就行交换
            list16[i], list16[a] = list16[a], list16[i]
print(list16)
