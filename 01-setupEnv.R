# 01-setUpEnv

library(httr);

# 为了测试方便，在本地环境中安装httr；
# install.packages('httr')
library(httr)
# GET 应用示例-----
r <- GET("http://httpbin.org/get")

r;
# 返回一个对象


url <- "http://httpbin.org/post"
body <- list(a = 1, b = 2, c = 3)

POST(url, body = body, encode = "multipart", verbose()) # the default
POST(url, body = body, encode = "form", verbose())
POST(url, body = body, encode = "json", verbose())
