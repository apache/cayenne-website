# Apache Cayenne Website

Sources for [https://cayenne.apache.org](https://cayenne.apache.org).

The marketing site is built with [Hugo Extended](https://gohugo.io/) (via [`hugo-bin`](https://www.npmjs.com/package/hugo-bin)).
Versioned documentation is built with [Antora](https://antora.org/) and written under `/docs` in the published site.

## Requirements

- [Node.js](https://nodejs.org/) 20+ (or use Maven, which downloads Node/Yarn)
- [Yarn](https://yarnpkg.com/) 1.x (or Maven frontend plugin)
- Optional: [Maven](https://maven.apache.org/) 3.9+ for the ASF-style wrapper and publish profile
- Git access to Cayenne documentation branches configured in `docs/antora-playbook.yml`

Hugo Extended is installed automatically as an npm dependency (`hugo-bin`). You do not need a system Hugo install.

## Quick start (npm / Yarn)

```bash
yarn install
yarn run build
```

Output: `target/site/` (Hugo pages + Antora docs at `target/site/docs/`).

| Script                | Purpose                                                |
|-----------------------|--------------------------------------------------------|
| `yarn run build`      | Hugo → `target/site`, then Antora → `target/site/docs` |
| `yarn run site`       | Hugo only                                              |
| `yarn run site:watch` | Hugo dev server (live reload)                          |
| `yarn run docs`       | Antora only                                            |

### Preview marketing site

```bash
yarn run site:watch
```

Open the URL Hugo prints (default `http://localhost:1313`).

### Preview full static build

```bash
yarn run build
# from repo root, serve the combined output
npx --yes serve target/site
# or: python -m http.server -d target/site 8080
```

## Quick start (Maven)

Maven installs Node/Yarn under `node/`, runs `yarn install`, then `yarn run build`.

```bash
# production-oriented build (base URL https://cayenne.apache.org/)
mvn clean package

# local Hugo server (base URL http://localhost:8080/ by default)
mvn -Pdev-server
# optional: -Ddev.port=3000
```

Publish profile (builds and SCM-publishes `target/site`; configure `pubScmUrl` / branch in `pom.xml` before use):

```bash
mvn -Ppublish -Dmsg="Describe the site change"
```

## Directory layout

```text
cayenne-website/
├── package.json              # scripts, Hugo, Antora, front-end deps
├── yarn.lock
├── pom.xml                   # optional Maven wrapper + publish
├── docs/
│   ├── antora-playbook.yml   # Antora content sources, UI, output
│   └── supplemental-ui/      # Cayenne branding on top of Default UI
│       ├── css/
│       ├── img/
│       └── partials/         # header, footer, head styles
└── site/                     # Hugo site
    ├── hugo.toml
    ├── content/              # Markdown pages and news
    ├── data/                 # TOML data (releases, contributors, …)
    ├── assets/sass/          # styles (Hugo Pipes)
    ├── layouts/              # templates
    └── static/               # static assets, .htaccess, etc.
```

Build artifacts (not committed): `target/`, `node/`, `node_modules/`, `site/resources/_gen/`, `.hugo_build.lock`.

## Documentation (Antora)

### Content sources

AsciiDoc lives in the main **cayenne** repository under `docs/*` (Antora components), not in this repo.
`docs/antora-playbook.yml` lists git branches/tags and `start_paths: docs/*`.

For local builds, point `content.sources[].url` at your local cayenne clone (or a remote URL) and enable the branches you need. Commit only portable playbook settings appropriate for CI/ASF (avoid machine-specific absolute paths).

### UI

- Base: [Antora Default UI](https://gitlab.com/antora/antora-ui-default) (MPL-2.0), loaded as a UI bundle.
- Project overlays: `docs/supplemental-ui/` (header/footer branding, layout CSS). These supplemental files are project-owned; do **not** add an empty `ui.yml` there (Antora fails with `staticFiles` errors).

### Search

Offline full-text search uses [`@antora/lunr-extension`](https://gitlab.com/antora/antora-lunr-extension) (static `search-index.js`; no server-side search service).

### Docs-only rebuild

```bash
yarn run docs
```

## Common maintenance

### News

Add `site/content/news/<slug>.md`:

```toml
+++
title = "Cayenne X.X Released"
date = 2026-01-01
+++

Content goes here.
```

Rendered under `/YYYY/MM/<slug>/` and listed on `/news/`.

### New Cayenne release on the marketing site

1. Update `site/data/cayenne.toml` (and related download data if needed).
2. Add a news article.
3. Adjust `docs/antora-playbook.yml` when a new docs branch/version should be published.
4. Update javadoc redirects in `site/static/.htaccess` if applicable.
5. Rebuild (`yarn run build` or `mvn clean package`).

### Edit documentation content

Change AsciiDoc in the cayenne repo on the relevant branch, then rebuild docs from this project.

### Contributors

Edit `site/data/contributors.toml` and rebuild the Hugo site.

### Marketing site styling

Edit `site/assets/sass/` (e.g. `style.scss`, `variables.scss`) and use `yarn run site:watch`.

### Documentation chrome styling

Edit `docs/supplemental-ui/` (partials and `css/cayenne-supplemental.css`), then `yarn run docs`.

## License notes

- Website content and project-owned code in this repository: Apache License 2.0 (see `LICENSE.txt`).
- Antora Default UI (and modifications to its Covered Software, if any): Mozilla Public License 2.0. Supplemental UI files authored here should keep clear separation; label third-party UI in notices when distributing the site.

## CI

See `.github/workflows/` for automation. Align workflow steps with `yarn run build` (or Maven `package`) and the `target/site` output directory.
