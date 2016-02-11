class Ipknot < Formula
  desc "IPknot for predicting RNA pseudoknot structures using integer programming"
  homepage "https://github.com/satoken/ipknot"
  url "https://github.com/satoken/ipknot/archive/v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "103a718323052871217263c89875c31954765de014f6ed379cb274ea8044040d"

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
