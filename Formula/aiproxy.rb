class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.70.0/aiproxy-darwin-arm64"
      sha256 "79c4921935c6f24fb1acd700862b56c0b5e03381ad39c337058a16e156b7c2cf"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.70.0/aiproxy-darwin-amd64"
      sha256 "e42f647de3d5d1dfca7a4432735ddcd8f176b276090d6cb230464fd1094469b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.70.0/aiproxy-linux-arm64"
      sha256 "9bc48023761eb1ffbc71a38759e9e2a221d449535ac5c0d7bfc03575428daaf6"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.70.0/aiproxy-linux-amd64"
      sha256 "3e6088b690a13751bfd0d677ee9a31ae510ff5e6836735080948f4f1427d299e"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
