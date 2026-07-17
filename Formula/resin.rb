class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.0/resin_0.2.0_darwin_arm64.tar.gz"
      sha256 "9f2fb78f57a06c54a3b2469d4bce28d6605f3323747ba5a898cec8e8cb999b38"
    end

    on_intel do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.0/resin_0.2.0_darwin_amd64.tar.gz"
      sha256 "4008bb801042a5f8496999ea0c9f5ca10513d01e228db64c1e170941617c44c1"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.2.0"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
