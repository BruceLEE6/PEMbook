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
# Prefer .venv312 if available
source .venv312/bin/activate
jupyter-book build jupyter-book
```

Then open:

- `jupyter-book/_build/html/index.html`

## One-command local preview

From repository root:

```bash
./scripts/preview-book.sh
```

Then open `http://127.0.0.1:8000` in your browser.
Use `Ctrl+C` in the terminal to stop the server.

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

## Troubleshooting

### 1) Workflow fails with command not found: `jupyter-book`

Cause: package installation step failed or was skipped.

Fix:

- Check the `Install Jupyter Book` step logs in Actions.
- Ensure internet access for package download on GitHub runner.
- Re-run the workflow from the Actions tab.

### 2) Site returns 404 after a successful workflow

Cause: GitHub Pages is not configured to use GitHub Actions.

Fix:

- Go to `Settings -> Pages`.
- Set `Build and deployment` source to `GitHub Actions`.
- Wait 1-2 minutes and refresh the site URL.

### 3) Images or chapter links are broken online

Cause: assets were referenced with incorrect paths.

Fix:

- Use paths relative to the book source in `jupyter-book/`.
- Rebuild locally with `jupyter-book build jupyter-book` and test `jupyter-book/_build/html/index.html`.
- Commit and push updated source files.

### 4) Workflow does not run after push

Cause: push was not made to `main` or `master`.

Fix:

- Verify branch with `git branch --show-current`.
- Push to `main` (or keep `master` if that is your default branch).
- Confirm the workflow file exists at `.github/workflows/deploy-jupyter-book.yml`.

### 5) Permission errors during deploy

Cause: token permissions are insufficient.

Fix:

- In repository `Settings -> Actions -> General`, allow workflow permissions for read/write where required.
- Keep these permissions in workflow: `pages: write` and `id-token: write`.
