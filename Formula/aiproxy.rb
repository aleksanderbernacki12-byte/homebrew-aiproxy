class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.1/aiproxy-darwin-arm64"
      sha256 "0567c9c78b623c6ab9e004a253c733774b4dbf024822891e303d3eb789f7815a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.1/aiproxy-darwin-amd64"
      sha256 "01f92f1d8bac357b27b7d5fcc749c2f83c261781178e837980e1f886e76552f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.1/aiproxy-linux-arm64"
      sha256 "f108abaec04a3a32067ef2e2bc612f95cc303901fb511e65725d8cd4354fb9a6"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.1/aiproxy-linux-amd64"
      sha256 "a71aa30e9529da3198a4de48864f667546a3d2add2876e2272b71f3257cf4396"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
