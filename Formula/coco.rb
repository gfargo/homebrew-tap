# coco — AI-powered git assistant (npm package `git-coco`).
#
#     brew install gfargo/tap/coco
#
# Homebrew pulls in Node as a dependency, so this is the zero-prerequisite
# install path. The url + sha256 below are regenerated from the published npm
# tarball on each release via coco's `bin/genHomebrewFormula.mjs`.
require "language/node"

class Coco < Formula
  desc "AI-powered git assistant: commits, changelogs, reviews, and a terminal workstation"
  homepage "https://coco.griffen.codes"
  url "https://registry.npmjs.org/git-coco/-/git-coco-0.71.0.tgz"
  sha256 "1850834cea63f66d0234ed3a443fff058889a315391667fa45174b8bf8979870"
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
