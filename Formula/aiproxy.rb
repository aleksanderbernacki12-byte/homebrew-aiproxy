class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.45.0/aiproxy-darwin-arm64"
      sha256 "06cc32fb76601f8e2c5a03cf1781ba26a0dc3976027173745124a71bb9e2def2"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.45.0/aiproxy-darwin-amd64"
      sha256 "446b3d4a6e93b2345f0c2dd78e5c385d8a2ff6ffccf4a2d67bce61bdd93a24d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.45.0/aiproxy-linux-arm64"
      sha256 "b41241ed97e7306a556bc0e5162dd57df9ae5c3cfc9873934871ee8a4910adf7"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.45.0/aiproxy-linux-amd64"
      sha256 "2d28a607d7f55373187ef390b5d7a57bdbc6c2472a492889e5f6229f63b341e7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
