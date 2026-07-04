# git-rewrite — bulk-rewrite git commit history metadata.
#
#   brew install gfargo/tap/git-rewrite
#
# Auto-updated by git-rewrite release workflow.

class GitRewrite < Formula
  include Language::Python::Virtualenv

  desc "Bulk-rewrite any part of git commit history: messages, authors, emails, dates, and more"
  homepage "https://github.com/gfargo/git-rewrite"
  url "https://github.com/gfargo/git-rewrite/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      git-rewrite is installed. To get started:

        git-rewrite strip "Co-Authored-By:.*" --field message --dry-run
        git-rewrite --help

      Optional shell completions (requires argcomplete):
        pip install argcomplete
        eval "$(register-python-argcomplete git-rewrite)"
    EOS
  end

  test do
    assert_match "usage", shell_output("#{bin}/git-rewrite --help")
  end
end
