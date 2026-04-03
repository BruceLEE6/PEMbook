# PEMbook

Book website generated with Jupyter Book and deployed to GitHub Pages.

## Online URL

After the GitHub Actions workflow succeeds, the site is available at:

https://brucelee6.github.io/PEMbook/

## Project structure

- Source book: `jupyter-book/`
- Build output (generated): `jupyter-book/_build/html/`
- Deployment workflow: `.github/workflows/deploy-jupyter-book.yml`

## Local build

From repository root:

```bash
source .venv/bin/activate
jupyter-book build jupyter-book
```

Then open:

- `jupyter-book/_build/html/index.html`

## Publish updates

1. Edit your content inside `jupyter-book/`.
2. Commit and push changes to `main`.
3. GitHub Actions rebuilds and republishes the website automatically.

Example:

```bash
git add jupyter-book
git commit -m "Update book content"
git push
```

## GitHub Pages setup check

- Repository Settings -> Pages -> Build and deployment: `GitHub Actions`
- Actions tab: workflow `Deploy Jupyter Book to GitHub Pages` must be green
