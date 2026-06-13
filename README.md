# gfargo/homebrew-tap

Homebrew formulae for [gfargo](https://github.com/gfargo) projects.

## coco

An AI-powered git assistant — commits, changelogs, code review, PR/MR
creation, and a terminal workstation. Works on GitHub, GitHub Enterprise, and
GitLab; supports seven AI providers including fully-local Ollama.

```bash
brew install gfargo/tap/coco
```

Or tap first, then install by name:

```bash
brew tap gfargo/tap
brew install coco
```

Homebrew brings Node along as a dependency, so this is the zero-prerequisite
install path.

- Homepage: <https://coco.griffen.codes>
- Source: <https://github.com/gfargo/coco> (npm package `git-coco`)

### Maintenance

`Formula/coco.rb`'s `url` + `sha256` track the latest published npm tarball and
are regenerated on each coco release with
[`bin/genHomebrewFormula.mjs`](https://github.com/gfargo/coco/blob/main/bin/genHomebrewFormula.mjs).
