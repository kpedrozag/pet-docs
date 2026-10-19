# pet-docs — llms.txt PoC

Proof of concept for exposing documentation as raw Markdown via GitHub Pages, in the style of [docs.stripe.com/llms.txt](https://docs.stripe.com/llms.txt). All content is fictional sample data about pets.

Live site: https://kpedrozag.github.io/pet-docs/

| URL | What |
|-----|------|
| `/index.md` | Landing page (`/` redirects here) |
| `/llms.txt` | Index of all pages with short descriptions ([llmstxt.org](https://llmstxt.org) format) |
| `/llms-full.txt` | All pages concatenated into one file |
| `/docs/*.md` | Each page as raw Markdown |

## How it works

- Pages is set to **Deploy from a branch** → `main` / `/ (root)`.
- `.nojekyll` disables Jekyll, so `.md` files are served as-is instead of being converted to HTML.
- Docs link to each other with relative links (`./dogs.md`), which work both on github.com and on Pages.

## Adding a page

1. Add `docs/<slug>.md`.
2. Add a line to `llms.txt`.
3. Run `./scripts/build-llms-full.sh` and commit.
