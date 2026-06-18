# Homebrew formula for coco (npm package `git-coco`).
#
# This lives here as the canonical source. To publish it, copy it into a tap
# repo named `gfargo/homebrew-tap` (file: Formula/coco.rb). Users then run:
#
#     brew install gfargo/tap/coco
#
# Regenerate the url + sha256 on each release with:
#
#     node bin/genHomebrewFormula.mjs            # latest published version
#     node bin/genHomebrewFormula.mjs 0.71.0     # a specific version
#
# Homebrew brings Node along as a dependency, so this is the zero-prerequisite
# install path for users who don't already have a Node toolchain.
require "language/node"

class Coco < Formula
  desc "AI-powered git assistant: commits, changelogs, reviews, and a terminal workstation"
  homepage "https://coco.griffen.codes"
  url "https://registry.npmjs.org/git-coco/-/git-coco-0.72.3.tgz"
  sha256 "7c76ca43574a7b13425f0ca7a6ae9ad7c13ea2115d400d5a2f8f3fd6c5a52102"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "coco", shell_output("#{bin}/coco --help 2>&1")
  end
end
