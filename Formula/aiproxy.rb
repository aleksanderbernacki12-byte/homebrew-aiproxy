class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.41.0/aiproxy-darwin-arm64"
      sha256 "2dc50f9fabcb2c90bec055cef09b975b5531b7f4aac7366d86423f2f9b70bbb1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.41.0/aiproxy-darwin-amd64"
      sha256 "89cfa61d3144848cf318febcb9e9b4dc5a4f4c339b1db5038da9169db7654dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.41.0/aiproxy-linux-arm64"
      sha256 "e2266a217f0ef4e05f78db66d4aecafab14fc217e2c413ef78827211fb0cbbc8"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.41.0/aiproxy-linux-amd64"
      sha256 "8bd44d749cc6aa8d4cc3a82550324ed38ebaf20d3bed8133a2e586ac4f8958e7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
