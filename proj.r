

```{r}

dados = read.csv("dados.csv", sep = ",", na.strings = "", stringsAsFactors = T)
head(dados)
summary(dados)

#Renomeando colunas
colnames(dados) = c("genero","faixa_etaria", "nivel_instituicao","tipo_instituicao","estudante_ti", "localizacao", "nivel_corte_carga", "condicao_financeira","internet_usada", "tipo_conectividade", "duracao_aula_diaria", "plataforma_da_instituicao", "dispositivo_usado_em_aula","nivel_adaptabilidade")

#Renomeando valores das colunas 

#Coluna gênero
unique(dados$genero)
dados$genero = as.character(dados$genero)
dados[dados$genero == "Boy",]$genero = "Masculino"
dados[dados$genero == "Girl",]$genero = "Feminino"
dados$genero = factor(dados$genero)

#Coluna nivel de instituição
unique(dados$nivel_instituicao)
dados$nivel_instituicao = as.character(dados$nivel_instituicao)
dados[dados$nivel_instituicao == "College",]$nivel_instituicao = "Faculdade"
dados[dados$nivel_instituicao == "University",]$nivel_instituicao = "Universidade"
dados[dados$nivel_instituicao == "School",]$nivel_instituicao = "Escola"
dados$nivel_instituicao = factor(dados$nivel_instituicao)

#Coluna tipo de instituição
unique(dados$tipo_instituicao)
dados$tipo_instituicao = as.character(dados$tipo_instituicao)
dados[dados$tipo_instituicao == "Non Government",]$tipo_instituicao = "Não governamental"
dados[dados$tipo_instituicao == "Government",]$tipo_instituicao = "Governamental"
dados$tipo_instituicao = factor(dados$tipo_instituicao)

#Coluna tipo de instituição
unique(dados$tipo_instituicao)
dados$tipo_instituicao = as.character(dados$tipo_instituicao)
dados[dados$tipo_instituicao == "Non Government",]$tipo_instituicao = "Não governamental"
dados[dados$tipo_instituicao == "Government",]$tipo_instituicao = "Governamental"
dados$tipo_instituicao = factor(dados$tipo_instituicao)

#Coluna estudande de TI
unique(dados$estudante_ti)
dados$estudante_ti = as.character(dados$estudante_ti)
dados[dados$estudante_ti == "No",]$estudante_ti = "Não"
dados[dados$estudante_ti == "Yes",]$estudante_ti = "Sim"
dados$estudante_ti = factor(dados$estudante_ti)

#Coluna Localização do estudante na cidade
unique(dados$localizacao)
dados$localizacao = as.character(dados$localizacao)
dados[dados$localizacao == "No",]$localizacao = "Não"
dados[dados$localizacao == "Yes",]$localizacao = "Sim"
dados$localizacao = factor(dados$localizacao)

#Coluna nivel de corte de carga
unique(dados$nivel_corte_carga)
dados$nivel_corte_carga = as.character(dados$nivel_corte_carga)
dados[dados$nivel_corte_carga == "Low",]$nivel_corte_carga = "Baixo"
dados[dados$nivel_corte_carga == "High",]$nivel_corte_carga = "Alto"
dados$nivel_corte_carga = factor(dados$nivel_corte_carga)

#Coluna condição financeira da familia
unique(dados$condicao_financeira)
dados$condicao_financeira = as.character(dados$condicao_financeira)
dados[dados$condicao_financeira == "Mid",]$condicao_financeira = "Médio"
dados[dados$condicao_financeira == "Poor",]$condicao_financeira = "Pobre"
dados[dados$condicao_financeira == "Rich",]$condicao_financeira = "Rico"
dados$condicao_financeira = factor(dados$condicao_financeira)

#Coluna tipo de internet usada
unique(dados$internet_usada)
dados$internet_usada = as.character(dados$internet_usada)
dados[dados$internet_usada == "Mobile Data",]$internet_usada = "Dados móveis"
dados[dados$internet_usada == "Wifi",]$internet_usada = "Wi-fi"
dados$internet_usada = factor(dados$internet_usada)

#Coluna disponibilidade do própio LMS da instituição
unique(dados$plataforma_da_instituicao)
dados$plataforma_da_instituicao = as.character(dados$plataforma_da_instituicao)
dados[dados$plataforma_da_instituicao == "No",]$plataforma_da_instituicao = "Não"
dados[dados$plataforma_da_instituicao == "Yes",]$plataforma_da_instituicao = "Sim"
dados$plataforma_da_instituicao = factor(dados$plataforma_da_instituicao)

#Coluna Dispositivo usado em aula
unique(dados$dispositivo_usado_em_aula)
dados$dispositivo_usado_em_aula = as.character(dados$dispositivo_usado_em_aula)
dados[dados$dispositivo_usado_em_aula == "Computer",]$dispositivo_usado_em_aula = "Computador"
dados[dados$dispositivo_usado_em_aula == "Mobile",]$dispositivo_usado_em_aula = "Celular"
dados[dados$dispositivo_usado_em_aula == "Tab",]$dispositivo_usado_em_aula = "Tablet"
dados$dispositivo_usado_em_aula = factor(dados$dispositivo_usado_em_aula)

#Coluna Nivel de adaptabilidade do aluno
unique(dados$nivel_adaptabilidade)
dados$nivel_adaptabilidade = as.character(dados$nivel_adaptabilidade)
dados[dados$nivel_adaptabilidade == "Low",]$nivel_adaptabilidade = "Baixo"
dados[dados$nivel_adaptabilidade == "High",]$nivel_adaptabilidade = "Alto"
dados[dados$nivel_adaptabilidade == "Moderate",]$nivel_adaptabilidade = "Moderado"
dados$nivel_adaptabilidade = factor(dados$nivel_adaptabilidade)

```

