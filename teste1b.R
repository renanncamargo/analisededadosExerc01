########################################
# Teste 1B          
# Nome(s): James Andrade Moreno Jr e Renann Camargo
########################################

#ATENÇÃO: Você precisa fazer o download do arquivo chustomer_churn.csv e
#           deixá-lo na mesma pasta que o arquivo teste1b.R
#         Depois, Fornecer o caminho completo até o arquivo csv.
#         Exemplos:
#              -Windows:
#                  "C:/Users/Andre/Downloads/customer_churn.csv"
#              -Ubuntu
#                  "/home/andre/Downloads/customer_churn.csv"
#              -Mac OS
#                  "/Users/andre/Downloads/customer_churn.csv"

customer_churn = read.table("customer_churn.csv", sep=",", header = TRUE, stringsAsFactors= FALSE)

########################################
# Item 1 (0.5 ponto)
########################################
customer_churn                                  #7500 clientes
customer_churn <- unique(customer_churn)        
customer_churn                                  #7043 clientes exclusivos

########################################
# Item 2 (0.5 ponto)
########################################
customer_churn$Partner <- as.logical(customer_churn$Partner == "Yes")
customer_churn$Dependents <- as.logical(customer_churn$Dependents == "Yes")
customer_churn$Churn <- as.logical(customer_churn$Churn == "Yes")
customer_churn

########################################
# Item 3 (0.5 ponto)
########################################

 
max_tenure <- customer_churn$customerID[(customer_churn$tenure == max(customer_churn$tenure)) == "TRUE"]
max_tenure
#max_tenure <- #salvar resultado nessa variável

########################################
# Item 4 (1.0 ponto)
########################################

max_tenure_50 <- customer_churn$customerID[((customer_churn$Contract == "Month-to-month") == "TRUE")
                                             & ((customer_churn$MonthlyCharges >= 50) == "TRUE")
                                             & ((customer_churn$tenure == max(customer_churn$tenure)) == "TRUE")]
max_tenure_50
#max_tenure_50 <- #salvar resultado nessa variável

########################################
# Item 5 (1.0 ponto)
########################################

#Retorna a quantidade de faturas paga de cada cliente mensal
ternureMonth <- customer_churn$tenure[((customer_churn$Contract == "Month-to-month") == "TRUE")]


min_tenure_mtm <- customer_churn$customerID[((customer_churn$Contract == "Month-to-month") == "TRUE")
                                           & ((customer_churn$tenure == min(ternureMonth)) == "TRUE")]

#min_tenure_mtm <- #salvar resultado nessa variável

########################################
# Item 6a (1.0 ponto)
########################################

#total_mtm <- #salvar resultado nessa variável
#total_year <- #salvar resultado nessa variável
#total_two_year <- #salvar resultado nessa variável

########################################
# Item 6b (0.5 ponto)
########################################

#regular_customers <- #salvar resultado nessa variável


########################################
# Item 7a (0.5 ponto)
########################################

#customers_with_dependents <- #salvar resultado nessa variável

########################################
# Item 7b (0.5 ponto)
########################################

#customers_mtm <- #salvar resultado nessa variável
#customers_year <- #salvar resultado nessa variável
#customers_two_year <- #salvar resultado nessa variável

########################################
# Item 7c (0.5 ponto)
########################################

#customers_two_years <- #salvar resultado nessa variável

########################################
# Item 7d (0.5 ponto)
########################################

#accumulated_discount <- #salvar resultado nessa variável