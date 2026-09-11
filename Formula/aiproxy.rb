class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.58.0/aiproxy-darwin-arm64"
      sha256 "da7edad1ff934956c7969916ba6b909afc4fbcf69f242f8ea656a8d6f5e4d30a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.58.0/aiproxy-darwin-amd64"
      sha256 "234d7ccfe3d539bb924176a960111cf3ce58b1cf75d691df122b8ad607e0a795"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.58.0/aiproxy-linux-arm64"
      sha256 "477011d60e241395ff0731ced6a89d0548ce1239fe04641e06c704680bd31b28"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.58.0/aiproxy-linux-amd64"
      sha256 "a4536f21cb9b28e9f055c631888d548c13b98424a9a77e20383731fa08cbe2c5"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
