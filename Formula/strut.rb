# strut — CLI for managing Docker stacks on VPS infrastructure.
#
#   brew install gfargo/tap/strut
#
# Auto-updated by strut release workflow.

class Strut < Formula
  desc "CLI tool for managing Docker stacks on VPS infrastructure"
  homepage "https://github.com/gfargo/strut"
  url "https://github.com/gfargo/strut/archive/refs/tags/v0.30.1.tar.gz"
  sha256 "c3c255881ef03215b7328b310e166294ed7cd2b9df08062f2b885fb11619aabb"
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
