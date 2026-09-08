class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.37.0/aiproxy-darwin-arm64"
      sha256 "341d75dcfec0457bf8492604f94bcbb3d81104f5f3e0fbc61238d7697f676507"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.37.0/aiproxy-darwin-amd64"
      sha256 "1284ba02615a6dcb4112120b72f030d8feb2e9afbde4e7b928b98417c50e0896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.37.0/aiproxy-linux-arm64"
      sha256 "3c5e318272ffa349845a525622a92b92482cd62ef8740702f500f943ece0ba46"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.37.0/aiproxy-linux-amd64"
      sha256 "a2ebce5299a8d7f32c590b0fd2f91af7ae49844fa325609c286a228d89cdd401"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
