class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.63.0/aiproxy-darwin-arm64"
      sha256 "a5e03c8e40a6285b2c571dcdb55461a0eb9c7b816a71c8bcc765903e3267aa9b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.63.0/aiproxy-darwin-amd64"
      sha256 "dc37af2b25a912b43b6865ffc003a190ac8c031c4ceb59cd23d1f48bc3c8a349"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.63.0/aiproxy-linux-arm64"
      sha256 "f3f3909534ef6e95df1e71bf6ad57cae79497a49aee525364eef41386772224a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.63.0/aiproxy-linux-amd64"
      sha256 "564b79becf74c50558d7aed85b3c0004f52bb69e3cb2a1d0e959f06d5bcac7d6"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
