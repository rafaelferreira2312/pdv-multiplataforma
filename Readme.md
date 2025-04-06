# PDV Multiplataforma (Electron + PostgreSQL)

<img src="https://img.shields.io/badge/Electron-47848F?style=for-the-badge&amp;logo=Electron&amp;logoColor=white" alt="PDV Electron">
<img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&amp;logo=postgresql&amp;logoColor=white" alt="PostgreSQL">
<img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&amp;logo=docker&amp;logoColor=white" alt="Docker">


Sistema de Ponto de Venda (PDV) desenvolvido com Electron para funcionar em Windows, Linux, macOS, iOS e Android, com backend containerizado em Docker e banco de dados PostgreSQL. Integra gestão de vendas, emissão de NF-e, controle de estoque e fluxo de caixa.

## 📌 Funcionalidades
1. Vendas Rápidas
Registro de vendas com múltiplos pagamentos (cartão, PIX, dinheiro) e impressão de recibos.

2. Nota Fiscal Eletrônica
Emissão de NF-e integrada com SEFAZ (API governamental).

3. Controle de Estoque
Alertas de reposição e rastreamento de produtos em tempo real.

4. Integração com Hardware
Suporte a balanças, leitores de código de barras e impressoras fiscais (Daruma, Bematech).

4. Multiplataforma
Funciona em desktops, totens de autoatendimento e dispositivos móveis.

5. Modo Offline
Sincronização automática quando a conexão é restabelecida.

## 🛠️ Tecnologias
- Componente	Tecnologia
- Frontend	Electron + React
- Backend	Node.js (Express)
- Banco de Dados	PostgreSQL
- Containerização	Docker
- CI/CD	GitHub Actions
- Testes	Jest (unitários), Cypress (E2E)

## 🐋 Arquitetura
mermaid

```bash
graph LR
  A[Frontend Electron] --> B[API Gateway]
  B --> C[Serviço de Vendas]
  B --> D[Serviço de Estoque]
  B --> E[Serviço Financeiro]
  C & D & E --> F[(PostgreSQL)]
  F --> G[Backup Cloud]
```

## 📦 Pré-requisitos
- Docker 20+
- Node.js 18+
- PostgreSQL 15+

## 🚀 Instalação
Clone o repositório:

```bash
git clone https://github.com/seu-usuario/pdv-electron.git
cd pdv-electron
```
Suba os containers:
```bash
docker-compose up -d
```

Configure o banco de dados (via script ou interface):

```bash
npm run db:migrate
```

Inicie o PDV:
```bash
npm run start:dev
```

## 🔧 Configuração de Hardware
Edite config/hardware.json para adicionar dispositivos:
```bash
{
  "balanca": {
    "modelo": "Toledo",
    "interface": "USB"
  },
  "impressora": {
    "tipo": "fiscal",
    "driver": "Daruma"
  }
}
```

## 📊 Screenshots
Tela de Vendas	
Controle de Estoque
Tela de Vendas	Estoque

## 📄 Licença
MIT License. Consulte LICENSE para detalhes.

## 📌 Notas Adicionais
Para iOS/Android, o projeto utiliza CapacitorJS para empacotamento.

O diretório docs/ contém manuais de integração com hardware específico.