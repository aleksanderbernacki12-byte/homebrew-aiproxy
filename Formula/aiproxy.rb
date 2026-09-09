class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.39.0/aiproxy-darwin-arm64"
      sha256 "037f06a73bdbbb4d26123c42fe5d3a2eee2591372e2d9718b948819ac02df56c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.39.0/aiproxy-darwin-amd64"
      sha256 "7999e2b1eb5302ca6b665e10e656077a49c23c289df21030b8d7f1156e4517e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.39.0/aiproxy-linux-arm64"
      sha256 "94138355742ac743233ae7e6a94c30f1a84afe7139485fe49b8eb2a52cc9f04f"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.39.0/aiproxy-linux-amd64"
      sha256 "05dc4bf7b8b651db3ce86d9f4747dd0ae3c579bb6f2aeaaf691a9074a994d059"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
