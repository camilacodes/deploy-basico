# Use a imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de requisitos e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copie o código da aplicação
COPY app.py app.py

# Exponha a porta que a aplicação vai usar
EXPOSE 500

# Comando para rodar a aplicação
CMD ["python", "app.py"]
