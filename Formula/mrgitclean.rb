class Mrgitclean < Formula
  desc "A friendly tool to clean up merged Git branches"
  homepage "https://github.com/gfargo/mrgitclean"
  url "https://github.com/gfargo/mrgitclean/archive/v1.1.1.tar.gz"
  sha256 "c6df809d2d3033f2f6357b7f476989b92fdd843caa9ae6d58890e82ca0c1d262"
  license "MIT"

  def install
    bin.install "bin/mrgitclean"
  end

  test do
    system "#{bin}/mrgitclean", "--help"
  end
end
