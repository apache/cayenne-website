# Apache Cayenne Website

Sources for [https://cayenne.apache.org](https://cayenne.apache.org).

The marketing site is built with [Hugo Extended](https://gohugo.io/) (via [`hugo-bin`](https://www.npmjs.com/package/hugo-bin)).
Versioned documentation is built with [Antora](https://antora.org/) and written under `/docs` in the published site.

## Requirements

- [Node.js](https://nodejs.org/) 20+ (or use Maven, which installs Node and Corepack)
- [Corepack](https://nodejs.org/api/corepack.html), included with supported Node.js releases
- Optional: [Maven](https://maven.apache.org/) 3.9+ for the ASF-style wrapper and publish profile
- Git access to the Cayenne documentation branches configured in `docs/antora-playbook.yml`

The repository pins Yarn 4.18.0 through the `packageManager` field in `package.json`. Hugo Extended is installed automatically as an npm dependency (`hugo-bin`); you do not need a system Hugo install.

## Quick start (Corepack / Yarn)

```bash
corepack enable
yarn install --immutable
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

Maven installs Node and Corepack under `node/`, then runs `yarn install --immutable` followed by `yarn run build`.

```bash
# production-oriented build (base URL https://cayenne.apache.org/)
mvn clean package

# local Hugo server (base URL http://localhost:8080/ by default)
mvn -Pdev-server
# optional: -Ddev.port=3000
```

### SCM publishing

The `publish` profile builds the site and publishes `target/site/` to the configured SCM branch using Maven SCM Publish Plugin.

Review `pubScmUrl`, `scmBranch`, and `hugo.baseurl` in `pom.xml` before publishing. Supply a commit message with `-Dmsg`:

```bash
mvn -Ppublish -Dmsg="Describe the site change"
```

This command publishes the generated site to the remote website branch. Run it only when you intend to update the published site.

## Directory layout

```text
cayenne-website/
├── package.json              # scripts, Hugo, Antora, front-end deps
├── yarn.lock                 # immutable Yarn 4 dependency lockfile
├── .yarnrc.yml               # Yarn 4 node-modules configuration
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

For local builds, point `content.sources[].url` at your local cayenne clone (or a remote URL) and enable the branches you need.

### UI

- Base: [Antora Default UI](https://gitlab.com/antora/antora-ui-default) (MPL-2.0), loaded as a UI bundle.
- Project overlays: `docs/supplemental-ui/` (header/footer branding, layout CSS). These supplemental files are project-owned.

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
4. Update redirects in `site/static/.htaccess` if applicable.
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

- Website content and project-owned code in this repository: Apache License 2.0 (see `LICENSE`).
- Antora Default UI (and modifications to its Covered Software, if any): Mozilla Public License 2.0. Supplemental UI files authored here should keep clear separation; label third-party UI in notices when distributing the site.
