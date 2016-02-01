class Centroidfold < Formula
  desc "CentroidFold for predicting RNA secondary structures"
  homepage "https://github.com/satoken/centroid-rna-package"
  url "https://github.com/satoken/centroid-rna-package/archive/v0.0.13.tar.gz"
  version "0.0.13"
  sha256 "db9340c044d6ce1ecbad2a523011b5838de7594c671fefe8167873e818ef4466"

  depends_on "viennarna"
  depends_on "boost"

  def install
    if ENV.compiler != :clang
      ENV['LDFLAGS'] += " -fopenmp"
      ENV['CXXFLAGS'] += " -fopenmp"
      ENV['CFLAGS'] += " -fopenmp"
    end

    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
