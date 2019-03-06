########################################
# Teste 1B          
# Nome(s): James Andrade Moreno Jr e Renann Camargo Alves
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

clientesMensais <- customer_churn$MonthlyCharges[((customer_churn$Contract == "Month-to-month") == "TRUE")
                                                 & ((customer_churn$Churn == "TRUE") == "TRUE")]
total_mtm <- sum(clientesMensais)
total_mtm

ClientesAnuais <- customer_churn$MonthlyCharges[((customer_churn$Contract == "One year") == "TRUE")
                                                & ((customer_churn$Churn == "TRUE") == "TRUE")]
total_year <- sum(ClientesAnuais)
total_year

ClientesDoisAnos <- customer_churn$MonthlyCharges[((customer_churn$Contract == "Two year") == "TRUE")
                                                  & ((customer_churn$Churn == "TRUE") == "TRUE")]
total_two_year <- sum(ClientesDoisAnos)
total_two_year


#total_mtm <- #salvar resultado nessa variável
#total_year <- #salvar resultado nessa variável
#total_two_year <- #salvar resultado nessa variável

########################################
# Item 6b (0.5 ponto)
########################################

customer_maior1 <- customer_churn$customerID[(customer_churn$Churn == "TRUE") 
                                             & ((customer_churn$tenure) > 12)]
regular_customers <- length(customer_maior1)
regular_customers

#regular_customers <- #salvar resultado nessa variável

########################################
# Item 7a (0.5 ponto)
########################################

ClientesCasados <- (((customer_churn$Partner == "TRUE") == "TRUE")
                    & ((customer_churn$Dependents == "TRUE") == "TRUE")
                    & ((customer_churn$Churn == "FALSE") == "TRUE"))
ClientesCasados

customers_with_dependents <- sum(ClientesCasados)
customers_with_dependents


#customers_with_dependents <- #salvar resultado nessa variável

########################################
# Item 7b (0.5 ponto)
########################################

clientesMen <- (((customer_churn$Contract == "Month-to-month") == "TRUE")
                & ((customer_churn$Churn == "FALSE") == "TRUE"))
customers_mtm <- sum(clientesMen)
customers_mtm

ClientesAn <- (((customer_churn$Contract == "One year") == "TRUE")
               & ((customer_churn$Churn == "FALSE") == "TRUE"))
customers_year <- sum(ClientesAn)
customers_year

ClientesDoisAn <- (((customer_churn$Contract == "Two year") == "TRUE")
                   & ((customer_churn$Churn == "FALSE") == "TRUE"))
customers_two_year <- sum(ClientesDoisAn)
customers_two_year

#customers_mtm <- #salvar resultado nessa variável
#customers_year <- #salvar resultado nessa variável
#customers_two_year <- #salvar resultado nessa variável

########################################
# Item 7c (0.5 ponto)
########################################

customer_ternure_2 <- customer_churn$customerID[(customer_churn$Churn == "FALSE") 
                                                & (customer_churn$tenure>=24)]
customers_two_years <- length(customer_ternure_2)
customers_two_years #salvar resultado nessa variável
# 3366 clientes
#customers_two_years <- #salvar resultado nessa variável

########################################
# Item 7d (0.5 ponto)
########################################

#Criando vetor com preço pago por cada cliente
vetcharge <- customer_churn$MonthlyCharges[(customer_churn$Churn == "FALSE")]
vetcharge
check2 <- length(vetcharge)
check2  # 5174 valores de faturas

#Calculo do juros compostos
vetchargeAcum <- vetcharge*0.95
vetchargeAcum
#Desconto acumulado
accumulated_discount <- ((12*vetcharge) - (12*vetchargeAcum))
accumulated_discount

#accumulated_discount <- #salvar resultado nessa variável