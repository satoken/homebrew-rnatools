class Dafs < Formula
  desc "dual decomposition for aligning and folding RNA sequences simultaneously"
  homepage "https://github.com/satoken/dafs"
  url "https://github.com/satoken/dafs/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "3e0879fc59726354de49ea9dd6d67eb5382f63459d3fc3ede201801928d03515"

  depends_on "viennarna"
  depends_on "glpk"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--with-vienna-rna",
                          "--with-glpk"
    system "make", "install"
  end
end
