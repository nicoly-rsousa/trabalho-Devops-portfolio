[![Deploy](https://github.com/nicoly-rsousa/trabalho-Devops-portfolio/actions/workflows/deploy.yml/badge.svg)](https://github.com/nicoly-rsousa/trabalho-Devops-portfolio/actions/workflows/deploy.yml)
[![CI](https://github.com/nicoly-rsousa/trabalho-Devops-portfolio/actions/workflows/ci.yml/badge.svg)](https://github.com/nicoly-rsousa/trabalho-Devops-portfolio/actions/workflows/ci.yml)

# Portfólio Profissional - Nicoly Rodrigues

Site publicado em: https://nicoly-rsousa.github.io/trabalho-Devops-portfolio/

## Pipeline CI/CD

- **CI** (`.github/workflows/ci.yml`): roda em todo Pull Request para a `main`. Verifica o `index.html`, executa o linter (Node 18 e 20), bloqueia arquivos acima de 500KB, procura termos proibidos e valida links e imagens.
- **CD** (`.github/workflows/deploy.yml`): a cada push na `main`, publica o site no GitHub Pages. Se o deploy falhar, o GitHub envia um e-mail automático de notificação.

## Desenvolvimento

Instale as dependências:

```bash
npm install
```

Valide o HTML:

```bash
npm run lint
```