% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/descritiva_continua.R
\name{desc_uni_continua}
\alias{desc_uni_continua}
\title{Descrição de Variáveis Contínuas}
\usage{
desc_uni_continua(
  vari,
  nome,
  texto = T,
  grafico = T,
  digitos = 2,
  idioma = "PT",
  virgula = F,
  estat_tab = "auto",
  nomes_tab = "auto",
  qqgraf = F,
  shaptest = T,
  ...
)
}
\arguments{
\item{vari}{Vetor numérico com os dados da variável contínua.}

\item{nome}{Nome da variável (como string) para ser utilizado nos gráficos e no texto gerado (obrigatório).}

\item{texto}{Se TRUE, gera uma descrição textual detalhada dos resultados. Caso contrário, não gera texto (padrão é TRUE).}

\item{grafico}{Se TRUE, gera gráficos para visualizar a distribuição dos dados. Caso contrário, não gera gráficos (padrão é TRUE).}

\item{digitos}{Número de dígitos para arredondamento nas estatísticas (padrão é 2).}

\item{idioma}{Idioma para a geração do texto ('PT' ou 'EN'; o padrão é 'PT').}

\item{virgula}{Se TRUE, utiliza vírgula como separador decimal no texto e gráficos (padrão é FALSE).}

\item{estat_tab}{Formato personalizado para as estatísticas apresentadas na tabela (padrão é 'auto').}

\item{nomes_tab}{Nomes personalizados para as estatísticas apresentadas na tabela (padrão é 'auto').}

\item{qqgraf}{Se TRUE, gera um gráfico QQ para avaliação da normalidade (padrão é FALSE).}

\item{shaptest}{Se TRUE, realiza o teste de Shapiro-Wilk para avaliação de normalidade, se as condições forem atendidas (padrão é TRUE).}

\item{...}{Argumentos adicionais para personalização dos gráficos gerados.}
}
\value{
Retorna uma lista com os seguintes elementos:
\item{result}{Dataframe com as estatísticas descritivas da variável.}
\item{texto}{Texto interpretativo detalhado, se o parâmetro texto for TRUE.}
\item{interp}{Resumo interpretativo em formato de texto resumido.}
\item{grafico}{Gráficos gerados para visualizar a distribuição dos dados, se grafico for TRUE.}
\item{qqplot}{Gráfico QQ gerado, se qqgraf for TRUE.}
}
\description{
Esta função realiza uma análise descritiva de uma variável contínua, incluindo o cálculo de estatísticas básicas, teste de normalidade, e geração de textos interpretativos e gráficos. Além disso, permite personalizar a tabela de estatísticas e gerar gráficos QQ para avaliar a normalidade.
}
\examples{
# Criando um vetor de dados contínuos
dados <- rnorm(100)

# Chamando a função com texto, gráfico e QQ plot
resultado <- desc_uni_continua(dados, nome = "Variável X", qqgraf = TRUE)

# Visualizando os gráficos
resultado$grafico
resultado$qqplot

}
