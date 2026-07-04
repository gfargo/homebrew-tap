# git-rewrite — bulk-rewrite git commit history metadata.
#
#   brew install gfargo/tap/git-rewrite
#
# Auto-updated by git-rewrite release workflow.

class GitRewrite < Formula
  include Language::Python::Virtualenv

  desc "Bulk-rewrite any part of git commit history: messages, authors, emails, dates, and more"
  homepage "https://github.com/gfargo/git-rewrite"
  url "https://files.pythonhosted.org/packages/source/g/git-rewrite-history/git_rewrite_history-0.1.2.tar.gz"
  sha256 "62d61d15f24ac168eae9493c3f5b6917806ae79bba7755ee106137323af59f69"
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
