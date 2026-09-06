class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.17.0/aiproxy-darwin-arm64"
      sha256 "4271782778055a112dd25ce49cfb5f75a3a89ce0be3c35296402c400aadb55a0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.17.0/aiproxy-darwin-amd64"
      sha256 "25cd5c940a4bc9eb208ce59917fad711acdb7f738eb67d6681656a81424bb1ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.17.0/aiproxy-linux-arm64"
      sha256 "504b490375b03073056a0df9bf3c72e39d838fe2a2a9f6089bf611400424db9f"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.17.0/aiproxy-linux-amd64"
      sha256 "c49949289e39c983352c43828da905b453d2c71e47a46daaa93a50c6c9bf95c7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
