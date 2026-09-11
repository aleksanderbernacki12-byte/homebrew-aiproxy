class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.54.0/aiproxy-darwin-arm64"
      sha256 "10452288ad087b0ee440c92108d2955af6ad4141d56c1f3b64a7b696d4564277"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.54.0/aiproxy-darwin-amd64"
      sha256 "b676384f4c5d260c32df78710f57dca4dd44f4fa626e459ba6cdd680449d764a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.54.0/aiproxy-linux-arm64"
      sha256 "9143938308242d88de0b289f33112ab9325f9a86c6525c51f370e6940633dfe0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.54.0/aiproxy-linux-amd64"
      sha256 "fd995b749a87b7ef32a925ec98a590a3c7aa89ad07552f714a27166a38f5e423"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
