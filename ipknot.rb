class Ipknot < Formula
  desc "IPknot for predicting RNA pseudoknot structures using integer programming"
  homepage "https://github.com/satoken/ipknot"
  url "https://github.com/satoken/ipknot/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "a93e02ef4778f912738760fd7f8724b64be0158823393ea1b268d4d8fafc9e56"

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
