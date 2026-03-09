class Opn < Formula
  desc "Modern, human-friendly replacement for lsof"
  homepage "https://github.com/monroestephenson/opn"
  url "https://github.com/monroestephenson/opn/archive/refs/tags/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "ccd7a2eed3ea23542b72c78df833c4679aa51c29c5c3e94f3b935f58fdce955e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/opn"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/opn --help")
  end
end
