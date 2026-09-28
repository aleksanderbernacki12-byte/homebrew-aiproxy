class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.1/aiproxy-darwin-arm64"
      sha256 "f92444b348c961d18d770eeb7306e4778636d391068ee879eb41d9c9484e1498"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.1/aiproxy-darwin-amd64"
      sha256 "d2c621177c06e6f8951a923d49a2e9f64456245e6bf255a3ba8d977061ec9ad2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.1/aiproxy-linux-arm64"
      sha256 "9f46ba0d77fc789de05d31466ca4f37c49017fe8ae1b64906bb397cc8b664101"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.1/aiproxy-linux-amd64"
      sha256 "426ceba5ca1a53c3236d3deddd94ba069fa5fdaf0159f720fb054a31dad0af67"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
