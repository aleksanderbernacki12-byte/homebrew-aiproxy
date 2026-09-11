class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.68.0/aiproxy-darwin-arm64"
      sha256 "1c9ecd8550222c1bd3804ab0fbf97db7295ad4deffd99876732c8aaa5fbaeb30"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.68.0/aiproxy-darwin-amd64"
      sha256 "da7bc5b78ac7495703538fc333d925a1219b4ed394dc7c678ba580458e312587"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.68.0/aiproxy-linux-arm64"
      sha256 "0ff67c9de0d225f0ad42eabdbd05313f1f94e3707ab64c335a699c3b43cc08ce"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.68.0/aiproxy-linux-amd64"
      sha256 "18645846e83588d4252b005f6474f487cc29f231a0b33b15f0142703c3e06d8c"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
