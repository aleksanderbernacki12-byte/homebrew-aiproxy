class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.72.0/aiproxy-darwin-arm64"
      sha256 "4d30f8d02b8ab65de99089a03a7f8b42a5fa69acf6eada08a8c7e79199a95794"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.72.0/aiproxy-darwin-amd64"
      sha256 "dcad10451e8dd475e547fbd21f4c28320a02c13a01440307e61b5c4ed8cbdaf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.72.0/aiproxy-linux-arm64"
      sha256 "cbedc8737d2e898a6970fc718ab6c250e95ab9588f90ebc38f6e6bf75a13a44e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.72.0/aiproxy-linux-amd64"
      sha256 "4efcbe35081609db3500a050a0e2e7a3af8f705d45122793c7c1b3d522c35eae"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
