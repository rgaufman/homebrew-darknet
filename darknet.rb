class Darknet < Formula
  desc "Convolutional Neural Networks"
  homepage "http://pjreddie.com/darknet/"
  head "https://github.com/pjreddie/darknet.git"

  depends_on "opencv@2" => :build
  depends_on "pkg-config"

  def install
    system "make", "PREFIX=#{prefix}"
    bin.install "darknet"
  end

  test do
    system "true"
  end
end
