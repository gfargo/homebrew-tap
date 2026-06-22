# gfargo/homebrew-tap

Homebrew formulae for [gfargo](https://github.com/gfargo) projects.

## Install

```bash
brew tap gfargo/tap
```

Then install any formula by name:

```bash
brew install strut
brew install coco
brew install localpress
brew install mrgitclean
```

Or install directly without tapping first:

```bash
brew install gfargo/tap/strut
```

---

## Formulae

### strut

CLI tool for managing Docker stacks on VPS infrastructure. Deploy, monitor,
backup, and operate any number of stacks from a single command line.

```bash
brew install gfargo/tap/strut
```

Pure bash — no compilation, no runtime dependencies beyond bash itself.
Homebrew installs the full engine (lib/, templates/, completions/) and
symlinks the `strut` entrypoint.

- Homepage: <https://github.com/gfargo/strut>
- Wiki: <https://github.com/gfargo/strut/wiki>

### coco

An AI-powered git assistant — commits, changelogs, code review, PR/MR
creation, and a terminal workstation. Works on GitHub, GitHub Enterprise, and
GitLab; supports seven AI providers including fully-local Ollama.

```bash
brew install gfargo/tap/coco
```

Homebrew brings Node along as a dependency, so this is the zero-prerequisite
install path.

- Homepage: <https://coco.griffen.codes>
- Source: <https://github.com/gfargo/coco> (npm package `git-coco`)

### localpress

Local-compute WordPress management CLI — optimize media, manage posts/pages,
audit accessibility, generate AI alt-text, all on your own hardware.

```bash
brew install gfargo/tap/localpress
```

localpress requires [Bun](https://bun.sh) at runtime (`brew install oven-sh/bun/bun`
or `curl -fsSL https://bun.sh/install | bash`).

- Homepage: <https://localpress.griffen.codes>
- Source: <https://github.com/gfargo/localpress>

### mrgitclean

A friendly CLI to clean up merged Git branches — interactive by default, with
batch, dry-run, remote, and include/exclude filtering.

```bash
brew install gfargo/tap/mrgitclean
```

Depends on zsh (a zsh script).

- Homepage/Source: <https://github.com/gfargo/mrgitclean>

---

## Maintenance

All formulae are updated automatically via GitHub Actions on their respective source repos.

| Formula | Auto-update mechanism |
|---------|----------------------|
| `strut` | Release workflow in [gfargo/strut](https://github.com/gfargo/strut) computes sha256 and pushes updated formula |
| `coco` | Release workflow in [gfargo/coco](https://github.com/gfargo/coco) regenerates from npm tarball |
| `localpress` | Release workflow in [gfargo/localpress](https://github.com/gfargo/localpress) builds platform binaries, computes sha256, and pushes formula |
| `mrgitclean` | Release workflow in [gfargo/mrgitclean](https://github.com/gfargo/mrgitclean) computes sha256 from the tag tarball and pushes the updated formula |
