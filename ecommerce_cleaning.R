library(tidyverse)
library(DBI)
library(odbc)

setwd("C:/Users/Matthew/Documents")
df <- read_csv("e-commerce_data.csv")

glimpse(df)
colSums(is.na(df))

df <- df %>% drop_na()
df <- df %>% filter(Quantity > 0)
df <- df %>% filter(UnitPrice > 0)
df <- df %>% mutate(InvoiceDate = mdy_hm(InvoiceDate))
df <- df %>% mutate(CustomerID = as.character(CustomerID))
df <- df %>% mutate(TotalPrice = Quantity * UnitPrice)
df <- df %>% rename_with(tolower)

write_csv(df, "ecommerce_cleaned.csv")

conn <- dbConnect(odbc(),
                  Driver = "SQL Server",
                  Server = ".\\SQLEXPRESS",
                  Database = "ecommerce",
                  Trusted_Connection = "Yes"
)

dbWriteTable(conn, "online_retail", df, append = TRUE, row.names = FALSE)
print("Data inserted successfully!")