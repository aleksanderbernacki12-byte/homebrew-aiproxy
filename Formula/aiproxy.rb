class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.66.0/aiproxy-darwin-arm64"
      sha256 "8dd5b938c22bfaf7397c51d133d9657230aff075da05ca0e1287f21052a7b834"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.66.0/aiproxy-darwin-amd64"
      sha256 "35778b7549d9a4fc7be408bb743f193ba10c684b4f1ec34220ca4707bf6da851"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.66.0/aiproxy-linux-arm64"
      sha256 "9cf5bf19534efb45e23fc700b32106760636800a0cf6792c479b92d04092b7f8"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.66.0/aiproxy-linux-amd64"
      sha256 "d529f0577236132fe9330f879060c4d032a7b4fbfa9509051cfd1b47e641532c"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
