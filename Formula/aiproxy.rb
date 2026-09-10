class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.51.0/aiproxy-darwin-arm64"
      sha256 "8c7492fa6b1319ff4c302a18629d3e391f9c673f154cfa142c13234f30d164fb"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.51.0/aiproxy-darwin-amd64"
      sha256 "4e092619e604bc225842c5f983ef6eac80a17f5c01e75bb53ffa7706dcf2097d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.51.0/aiproxy-linux-arm64"
      sha256 "6d3f3336fada50ecb4975a8a45b68e911bcc7c4a369c356613df034c655c0359"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.51.0/aiproxy-linux-amd64"
      sha256 "61bd563bd625b73722703005155bda95af83900d723fd3f79811d856aa11b1cc"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
