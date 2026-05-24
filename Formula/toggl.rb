class Toggl < Formula
  desc "Command-line client for Toggl Track"
  homepage "https://github.com/acpoppe/toggl-cli"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.0.0/toggl-aarch64-macos.tar.gz"
      sha256 "c14e26607a7e198318dedc6ecadfd25cce6ee3eb9d581691f3ffcb21a368c4b2"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.0.0/toggl-x86_64-macos.tar.gz"
      sha256 "bfddcde7176acb41bd84bffa18cf9eb88101c2f901bd552881c1f4469970b2fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.0.0/toggl-aarch64-linux.tar.gz"
      sha256 "1caa8ac38ca24e5f7a3925bdc2f21bae002caf19caa30301d5425656080994e8"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.0.0/toggl-x86_64-linux.tar.gz"
      sha256 "cd3799567946736ee11328edfd02b9dc9105ede2e22a835877f2cc83eb1a0b9e"
    end
  end

  def install
    bin.install "toggl"
  end

  test do
    assert_match "toggl", shell_output("#{bin}/toggl help")
  end
end
