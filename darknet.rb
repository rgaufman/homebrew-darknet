class Darknet < Formula
  desc "Convolutional Neural Networks"
  homepage "https://github.com/AlexeyAB/darknet"
  head "https://github.com/AlexeyAB/darknet.git"

  depends_on "opencv@4" => :build
  depends_on "pkg-config"

  def install
    system "make", "PREFIX=#{prefix}"
    bin.install "darknet"
  end

  test do
    system "true"
  end
end
