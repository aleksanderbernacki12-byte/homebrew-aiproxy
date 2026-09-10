class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.50.0/aiproxy-darwin-arm64"
      sha256 "3290b2257170aa124c54a48f3ed2b0fc5d9834cd4b22517cf9e76ef7187b3e6e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.50.0/aiproxy-darwin-amd64"
      sha256 "eb4e3c4f9826b455852cb3121d3fe26eae2e5e758ee788b1997ea26f7194c5bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.50.0/aiproxy-linux-arm64"
      sha256 "b0012ad0cd28866656a6aae06d15259660fa20b85ddb786e267db3b34395916b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.50.0/aiproxy-linux-amd64"
      sha256 "1dcdc47f036a299590a3f21759b1694ca20fa9921a5657a385aa3435ac6bdd16"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
