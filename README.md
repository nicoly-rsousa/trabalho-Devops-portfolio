# DevOps Trabalho

Portfólio Profissional - Nicoly Rodrigues

Site publicado em: https://nicoly-rsousa.github.io/trabalho-Devops-portfolio/

Pipeline CI/CD
CI (.github/workflows/ci.yml): roda em todo Pull Request para a main. Verifica o index.html, executa o linter (Node 18 e 20), bloqueia arquivos acima de 500KB, procura termos proibidos e valida links e imagens.
CD (.github/workflows/deploy.yml): a cada push na main, publica o site no GitHub Pages e avisa no Discord se falhar.

## Desenvolvimento

Instale as dependencias:

```bash
npm install
```

Valide o HTML:

```bash
npm run validate
```

Verifique os links locais:

```bash
npm run check-links
```

## Implantacao

O workflow `.github/workflows/deploy.yml` publica o conteudo no GitHub Pages a cada envio na branch `main`.
