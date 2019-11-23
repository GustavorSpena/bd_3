# Configurar o oracle
# voce precisa de uma conta no Docker Hub
# 1 - log in no docker hub
# 2 - procure por oracle enterprise
# 3 - Siga o fluxo de se inscrever 

# 4 - na command line:
docker login 
docker pull store/oracle/database-enterprise:12.2.0.1
docker run -d -it --name projeto_3_oracle store/oracle/database-enterprise:12.2.0.1
docker-compose build
docker-compose up -d

# 5 - Acessar http://localhost
