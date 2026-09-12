class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.1/aiproxy-darwin-arm64"
      sha256 "045ca9a047dfdb52a31c866a04f0bd5efca4316ff46d93c8dddc6ac7b1260784"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.1/aiproxy-darwin-amd64"
      sha256 "60e80b3990add95cf36a7c7ef1cd6f626387cc2f47a34f43858992c952c22503"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.1/aiproxy-linux-arm64"
      sha256 "1aa95d5a6c8d085530919a7ce346351f7961dd03ea0f7c42d83edee688cd8a74"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.1/aiproxy-linux-amd64"
      sha256 "e22a3efa099645c91501d997f0a1c7a186cf94c39f64e04eb8b147fdc4746b83"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
