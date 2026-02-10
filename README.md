# Projeto: Azure Container Apps - Portfólio

Este projeto contém scripts de infraestrutura como código (IaC) utilizando Azure CLI para realizar o deploy de uma aplicação Java/Spring Boot containerizada.

## Estrutura
- `01_script_infraestrutura.ps1`: Configuração inicial e teste com imagem Hello World.
- `02_script_build_deploy.ps1`: Build da imagem Docker, criação do ACR (Registry) e deploy da aplicação final.

## Tecnologias
- Microsoft Azure (Container Apps, ACR)
- Docker
- PowerShell / Azure CLI

## Como executar
1. Certifique-se de ter o Azure CLI e Docker instalados.
2. Execute `az login`.
3. Rode os scripts via PowerShell.
