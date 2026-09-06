class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.15.0/aiproxy-darwin-arm64"
      sha256 "bb64409e72ee72b1aaa5c6fda8d17fd2624947ba740bd23073ca2a5395182651"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.15.0/aiproxy-darwin-amd64"
      sha256 "70e62c8a41b26e182d89b0a5e235d7cd471413ef11ef05ce89a64d4f70d595cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.15.0/aiproxy-linux-arm64"
      sha256 "5d39a83995ad88544b515efb22085355a031e8882712886203ec4269d1dab1a2"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.15.0/aiproxy-linux-amd64"
      sha256 "94af872572bfd6e7ae908dac0bfa17a937d89729a323b7a4ccc967b614a860c6"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
