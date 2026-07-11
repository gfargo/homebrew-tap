# strut — CLI for managing Docker stacks on VPS infrastructure.
#
#   brew install gfargo/tap/strut
#
# Auto-updated by strut release workflow.

class Strut < Formula
  desc "CLI tool for managing Docker stacks on VPS infrastructure"
  homepage "https://github.com/gfargo/strut"
  url "https://github.com/gfargo/strut/archive/refs/tags/v0.36.0.tar.gz"
  sha256 "64aae5eb1eb749cc8746ae1f13f1cd5ffdd2a24468c31dad2b0a3e4cf5e8fbb8"
  license "MIT"

  depends_on "bash"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"strut"
  end

  def caveats
    <<~EOS
      strut is installed. To get started:

        strut init --registry ghcr --org my-org
        strut scaffold my-app
        strut --help

      Shell completions:
        strut completions bash > $(brew --prefix)/etc/bash_completion.d/strut
        strut completions zsh > $(brew --prefix)/share/zsh/site-functions/_strut
        strut completions fish > ~/.config/fish/completions/strut.fish
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strut --version").strip
  end
end
