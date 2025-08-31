
# depuracion.R
# Proyecto Salud Mental - CRONOS2 Wave 4

library(readr)
df <- read_csv("Datos/Base de datos original/CRON2W4e01.csv")

df_clean <- df %>%
  mutate(across(where(is.numeric), ~na_if(., 77))) %>%
  mutate(across(where(is.numeric), ~na_if(., 88))) %>%
  mutate(across(where(is.numeric), ~na_if(., 99)))

# Guardar versión depurada
write.csv(df_clean, "Datos/Base de datos depurada/CRON2W4_clean.csv", row.names = FALSE)