class Ractip < Formula
  desc "RNA-RNA interaction prediction by integer programming"
  homepage "https://github.com/satoken/ractip"
  url "https://github.com/satoken/ractip/archive/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "cb9ef36655f0cc76a84e7c44bd0ae849a12ae6c9968e8dc767a518ed41e85b5b"

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
