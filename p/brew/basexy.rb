class Basexy < Formula
  desc "Base16, Base32, Base32Hex, Base64, Base64UFS encoder and decoder"
  homepage "http:s//github.com/roman-neuhauser/basexy"
  version "__VERSION__"
  url "https://github.com/roman-neuhauser/basexy/archive/v#{version}.tar.gz"
  sha256 ""
  head "https://github.com/roman-neuhauser/basexy.git"

  depends_on "boost"
  depends_on "cram" => :build

  def install
    system "./configure", \
      "--prefix=#{prefix}", \
      "--with-boost=#{Formula["boost"].opt_prefix}"
    system "make", "check", "install"
  end
end
