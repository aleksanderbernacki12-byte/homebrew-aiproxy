class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.30.0/aiproxy-darwin-arm64"
      sha256 "61f1c8cddd82a037425d36092986a799fde10e3988e9a3467051343a4f98606e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.30.0/aiproxy-darwin-amd64"
      sha256 "946705228bfb1254e7da23bd384ba7e099e6b9190c427731ba0ce6414f213da0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.30.0/aiproxy-linux-arm64"
      sha256 "7cfc039d2f9d5e7e7f138bf17a272fc63232a1600e82a42412bd87138d9d30e5"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.30.0/aiproxy-linux-amd64"
      sha256 "d6dc8f67c36f44d3c194e57b5df7bd923b9eaf6c63ba7006d6366229fc0b2117"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
