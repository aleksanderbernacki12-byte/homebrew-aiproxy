class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.16.0/aiproxy-darwin-arm64"
      sha256 "73c6e12951a29d288f8a9ac3824c0b51154e1d57f2ed84eba660ccb350ffbd8b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.16.0/aiproxy-darwin-amd64"
      sha256 "d96079d8ecb03afe4a91531f2821f5e9748d1db61b75997954399b1b37089253"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.16.0/aiproxy-linux-arm64"
      sha256 "a7b92789dab679dc4f7acfeda0e12bfeeffadcb3d121bf1b9094a8b16ab270e7"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.16.0/aiproxy-linux-amd64"
      sha256 "e29b3c71db9bf8e64857d07c634e841bdca7cf8a9825f358f7b3bfcb79b9bf1e"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
