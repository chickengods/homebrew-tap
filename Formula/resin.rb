class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.2.2"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.2/resin_0.2.2_darwin_arm64.tar.gz"
      sha256 "52dcd1cf4a4290b0b6533f08b53c80a6fbb61337d164ebceefb9d27f5d676973"
    end

    on_intel do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.2/resin_0.2.2_darwin_amd64.tar.gz"
      sha256 "fd7e0615b85c13d21e5bd4501250a2773680babadd99137714ff82fea4bf0c28"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.2.2"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
