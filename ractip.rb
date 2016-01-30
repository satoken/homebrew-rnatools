class Ractip < Formula
  desc "RNA-RNA interaction prediction by integer programming"
  homepage "https://github.com/satoken/ractip"
  url "https://github.com/satoken/ractip/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "0f128f34d7473d2d95bdecb182a62ca167edc253ab62e0f8c523c97082f37f79"

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
