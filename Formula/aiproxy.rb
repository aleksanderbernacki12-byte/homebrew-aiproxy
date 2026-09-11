class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.0/aiproxy-darwin-arm64"
      sha256 "832e75810b8de70f12c96236f742a1c9229b94b61ac99f4baa9f5f3823f0499b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.0/aiproxy-darwin-amd64"
      sha256 "7374e107f71e76bf240ff8bac6c4889d3e2bd662e2014af5ce00955c12d27c2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.0/aiproxy-linux-arm64"
      sha256 "11430c1c407d9971822440c3531d4150f84a66ab73b04d2e01542894f6bdda06"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.0/aiproxy-linux-amd64"
      sha256 "fedbcc52986ef9b9df06d37ef48e0eeea76492425d077de9b90d01cea1813307"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
