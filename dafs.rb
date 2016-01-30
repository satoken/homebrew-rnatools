class Dafs < Formula
  desc "dual decomposition for aligning and folding RNA sequences simultaneously"
  homepage "https://github.com/satoken/dafs"
  url "https://github.com/satoken/dafs/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "d5fd0a3b7f1b789031651f0dd581f31c9a16bc3b2871cba1478e4f5848dd1d5d"

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
