class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.55.0/aiproxy-darwin-arm64"
      sha256 "d759276c0ccfd73954e13fd515c5533ea3cb68e5f6300d4e2ce67030fbe0982e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.55.0/aiproxy-darwin-amd64"
      sha256 "986ac296af03cfe265e870c0bd609d344591ef88748e40da5e0b5b623893925f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.55.0/aiproxy-linux-arm64"
      sha256 "41f08f39d1a5becb9b33796a3fee5d4629443b852f94e863953f73cb99134b72"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.55.0/aiproxy-linux-amd64"
      sha256 "6ff90e23944f305010ca47c69639647ffad69332d1b58401842e0287596b2e86"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
