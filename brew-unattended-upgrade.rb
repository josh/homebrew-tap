class BrewUnattendedUpgrade < Formula
  desc "Homebrew unattended upgrade service"
  homepage "https://github.com/josh/homebrew-tap/blob/main/cmd/brew-unattended-upgrade.rb"
  url "https://github.com/josh/homebrew-tap/raw/4b9c17f996fd897382ad812a472a551d116f7172/empty.tar"
  version "0.1.0"
  sha256 "9bfac43f415467832a8470a10da79435da99c950cd20b7fae458eb2144f0ff7a"

  livecheck do
    skip "Built into josh/homebrew-tap"
  end

  depends_on "terminal-notifier"

  def install
    (bin/"brew-unattended-upgrade").write <<~EOF
      #!/bin/sh
      exec brew unattended-upgrade
    EOF
    chmod 0755, bin/"brew-unattended-upgrade"
  end

  service do
    run [HOMEBREW_BREW_FILE, "unattended-upgrade"]
    run_type :interval
    interval 86400
    environment_variables PATH: std_service_path_env
    log_path var/"log/brew-unattended-upgrade.log"
    error_log_path var/"log/brew-unattended-upgrade.log"
  end

  test do
    42
  end
end
