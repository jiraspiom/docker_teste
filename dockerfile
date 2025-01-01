# Use uma imagem base mínima com Python
FROM python:3.9-slim

# Instale o servidor HTTP básico
RUN pip install flask

# Copie o código da aplicação para o contêiner
WORKDIR /app
COPY . .

# Exponha a porta que o servidor usará
EXPOSE 5000

# Comando para rodar o servidor
CMD ["python", "app.py"]