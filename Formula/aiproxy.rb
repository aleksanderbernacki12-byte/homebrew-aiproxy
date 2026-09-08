class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.33.0/aiproxy-darwin-arm64"
      sha256 "884ad6e2df2654495c0b4b28d49a05c70df0fd28395b79386c7d9e916bab56f7"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.33.0/aiproxy-darwin-amd64"
      sha256 "962966c369dcab381b39e87502520214962d345163e3a1722c4f81ceb5df8997"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.33.0/aiproxy-linux-arm64"
      sha256 "b021ccb831bea264c1130e07d2af52ff63a27989408e4499ce32a2afb9fc72ad"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.33.0/aiproxy-linux-amd64"
      sha256 "b5b30275ba143d570592abd27a48a23791c631c912c94c8d9ea2153597d932f8"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
