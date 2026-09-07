class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.26.0/aiproxy-darwin-arm64"
      sha256 "79cbcb00a3eb8605926490efb9f82b3839bb3c307febd9b4c4e4e37a5c7d008e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.26.0/aiproxy-darwin-amd64"
      sha256 "7c37a35633704443fe40cd4a7c7e0c6a2b74c5add3a9e7d0d16f02e9d42f162b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.26.0/aiproxy-linux-arm64"
      sha256 "54b4125059ca490f2284e8e9eed5e6f1486e51f76ba59587d0b849ec698cfad8"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.26.0/aiproxy-linux-amd64"
      sha256 "042c713c76460544e676265c568f4c9ed8217c33e407dee2b8068b423298f4b3"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
