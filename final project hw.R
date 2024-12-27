install.packages("tidyverse")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("readr")
library(tidyverse)

file_path <- "C:/Users/chenmi/Downloads/data 期末/Documents/X109年度A1交通事故資料"
data <- read_csv(file_path)
# 載入必要的套件
library(tidyverse)

# 設定檔案路徑
file_path <- "X109年度A1交通事故資料"

# 讀取檔案
data <- read_csv(file_path)

# 總行數和總欄位數
rows <- nrow(data)
columns <- ncol(data)

# 印出結果
cat("總行數:", rows, "\n")
cat("總欄位數:", columns, "\n")

setwd("檔案所在資料夾的完整路徑")
getwd()
list.files()
data <- read_csv("109年度A1交通事故資料.csv")
# 載入必要的套件
library(tidyverse)

# 設定檔案路徑
file_path <- "109年度A1交通事故資料.csv"

# 讀取資料
data <- read_csv(file_path)

# 1. 統計 Column4 哪種車種出現交通事故最多
car_type_stats <- data %>%
  count(Column4, sort = TRUE)

most_common_car <- car_type_stats %>%
  slice_max(n) %>%
  select(Column4, n)

cat("交通事故最多的車種:\n")
print(most_common_car)

# 2. 統計 Column2 哪個地點最容易發生交通事故
location_stats <- data %>%
  count(Column2, sort = TRUE)

most_common_location <- location_stats %>%
  slice_max(n) %>%
  select(Column2, n)

cat("最容易發生交通事故的地點:\n")
print(most_common_location)

# 3. 計算 Column3 的傷亡事故平均值
avg_injuries <- data %>%
  summarise(mean_injuries = mean(Column3, na.rm = TRUE))

cat("Column3（傷亡事故）平均值:\n")
print(avg_injuries)
colnames(data)
car_type_stats <- data %>%
  count(車種, sort = TRUE)
# 檢查欄位名稱
colnames(data)

# 1. 統計車種出現交通事故最多的車種
car_type_stats <- data %>%
  count(車種, sort = TRUE) # 更新為實際的欄位名稱

most_common_car <- car_type_stats %>%
  slice_max(n) %>%
  select(車種, n)

cat("交通事故最多的車種:\n")
print(most_common_car)

# 2. 統計地點最容易發生交通事故
location_stats <- data %>%
  count(地點, sort = TRUE) # 更新為實際的欄位名稱

most_common_location <- location_stats %>%
  slice_max(n) %>%
  select(地點, n)

cat("最容易發生交通事故的地點:\n")
print(most_common_location)

# 3. 計算傷亡事故的平均值
avg_injuries <- data %>%
  summarise(mean_injuries = mean(傷亡人數, na.rm = TRUE)) # 更新為實際的欄位名稱

cat("傷亡事故的平均值:\n")
print(avg_injuries)

# 1. 統計車種出現交通事故最多的類型
car_type_stats <- data %>%
  count(車種, sort = TRUE)

most_common_car <- car_type_stats %>%
  slice_max(n) %>%
  select(車種, n)

cat("交通事故最多的車種:\n")
print(most_common_car)

# 2. 統計發生地點最容易發生交通事故的地點
location_stats <- data %>%
  count(發生地點, sort = TRUE)

most_common_location <- location_stats %>%
  slice_max(n) %>%
  select(發生地點, n)

cat("最容易發生交通事故的地點:\n")
print(most_common_location)

# 3. 計算死亡受傷人數的平均值
avg_injuries <- data %>%
  summarise(mean_injuries = mean(死亡受傷人數, na.rm = TRUE))

cat("死亡受傷人數的平均值:\n")
print(avg_injuries)


