class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.46.0/aiproxy-darwin-arm64"
      sha256 "456a0dccf9fa153ca04e50d3b1b8096fd2fcbe87c001036253c72353135e13e4"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.46.0/aiproxy-darwin-amd64"
      sha256 "dba6b61720f197ed3ccd2f11e2914fba52a7d1defd68255fd979e75a7849da73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.46.0/aiproxy-linux-arm64"
      sha256 "f7179308becccae6523c750155317c0b947b0c8846565cfd07effc8c9c6f343b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.46.0/aiproxy-linux-amd64"
      sha256 "c9cc4a8f01b0a30e1c57a81828040a24110c0a20b56efb3f3e287e7f7afa98e6"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
