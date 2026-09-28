class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.0/aiproxy-darwin-arm64"
      sha256 "b28cfe55d434656502e58d6702b931a717475e37de4fe1530b12c3140b53033c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.0/aiproxy-darwin-amd64"
      sha256 "4fe31996c7a3040f7af98ed53e037933a5908c42c01c95dd856aa1d0c2bc4fcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.0/aiproxy-linux-arm64"
      sha256 "c55781a7f23e208d6bcd3878d8b3a79311ab687ad1b59ecba313501a2b3c3d03"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.0/aiproxy-linux-amd64"
      sha256 "28d80a7f360d30660c2bee0a395bab9ed0fd30bb774bc090687cd4df0329d5a7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
