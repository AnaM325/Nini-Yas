# Nini & Yas

Site de estudos e lazer em português, com perfis Nini e Yas. Projeto estático (HTML, CSS e JavaScript), sem instalação de dependências.

## Abrir localmente

Abra `index.html` no navegador. Para testar em servidor local, execute:

```bash
python3 -m http.server 8000
```

E visite http://localhost:8000.

## Publicar no GitHub Pages

1. Crie um repositório **vazio** no GitHub (sem README, .gitignore ou licença).
2. Na pasta do projeto, execute:

```bash
git remote add origin https://github.com/SEU-USUARIO/nini-yas-site.git
git push -u origin main
```

3. No GitHub, vá a **Settings → Pages → Build and deployment**.
4. Escolha **Deploy from a branch**, branch `main`, pasta `/ (root)` e salve.
5. O endereço será parecido com `https://SEU-USUARIO.github.io/nini-yas-site/`.

## Atenção aos dados

GitHub Pages publica apenas os arquivos do site; **não sincroniza dados**. Os dados do aplicativo ficam em `localStorage` e `IndexedDB` no navegador/dispositivo. Cada navegador tem registros separados. Publicar no GitHub **não** cria contas, banco de dados nem sincronização entre Nini e Yas. Dados de uma origem (arquivo local, localhost, GitHub Pages) não migram automaticamente entre elas. Use o recurso de backup disponível no site quando necessário; guarde PDFs e imagens originais separadamente.

O GitHub Pages é público em geral. Não publique arquivos pessoais ou PDFs privados no repositório.

## Organização

- `index.html` — aplicação completa em um único arquivo.
- `scripts/iniciar.sh` — servidor local opcional.
- `scripts/configurar-github.sh` — configura a URL remota e envia a branch `main` depois que você criar o repositório.
- `.nojekyll` — permite servir arquivos estáticos diretamente.
