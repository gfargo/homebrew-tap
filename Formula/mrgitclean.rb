class Mrgitclean < Formula
  desc "A friendly tool to clean up merged Git branches"
  homepage "https://github.com/gfargo/mrgitclean"
  url "https://github.com/gfargo/mrgitclean/archive/v1.1.2.tar.gz"
  sha256 "560eecad5aa1caa7908a58d8215abd1a478e4f439c4ffce1419f58165037f4ee"
  license "MIT"

  def install
    bin.install "bin/mrgitclean"
  end

  test do
    system "#{bin}/mrgitclean", "--help"
  end
end
