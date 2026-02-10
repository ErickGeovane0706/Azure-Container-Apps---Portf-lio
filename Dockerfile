# Usa uma imagem oficial do Nginx (versão Alpine é a mais leve, menos de 10MB)
FROM nginx:alpine

# Remove a página padrão "Welcome to Nginx" para não confundir
RUN rm -rf /usr/share/nginx/html/*

# Copia TODOS os arquivos da sua pasta atual (.) para a pasta pública do Nginx no container
COPY . /usr/share/nginx/html

# Cria um arquivo de configuração personalizado para o Nginx (opcional, mas evita erros 404 em rotas)
# Se não tiver rotas complexas, o comando acima já basta.
# Mas para garantir que o Nginx leia seus arquivos corretamente:
RUN chmod -R 755 /usr/share/nginx/html

# Informa ao Azure/Docker que o container vai rodar na porta 80
EXPOSE 80

# O comando padrão do Nginx para iniciar o servidor
CMD ["nginx", "-g","daemon off;"]