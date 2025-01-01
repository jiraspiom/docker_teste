FROM eclipse-temurin:21-jdk

# Defina o diretório de trabalho no contêiner
WORKDIR /minecraft

# Baixe o servidor oficial do Minecraft
ADD https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar server.jar

# Aceite automaticamente o EULA do Minecraft
RUN echo "eula=true" > eula.txt

# Exponha a porta padrão do servidor Minecraft
EXPOSE 25565

# Comando para iniciar o servidor Minecraft
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]