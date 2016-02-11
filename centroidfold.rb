class Centroidfold < Formula
  desc "CentroidFold for predicting RNA secondary structures"
  homepage "https://github.com/satoken/centroid-rna-package"
  url "https://github.com/satoken/centroid-rna-package/archive/v0.0.14.tar.gz"
  version "0.0.14"
  sha256 "dbfd7ced626d60c19528aad93d9ef46b493dffcdf73a47f2986dfee5b31613e7"

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
