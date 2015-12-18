class Centroidfold < Formula
  desc "CentroidFold for predicting RNA secondary structures"
  homepage "https://github.com/satoken/centroid-rna-package"
  url "https://github.com/satoken/centroid-rna-package/archive/v0.0.12.tar.gz"
  version "0.0.12"
  sha256 "de8f662f888ec264c7e7dd9536c23ddfe67e8b05626cb977def2dff0509509d4"

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
