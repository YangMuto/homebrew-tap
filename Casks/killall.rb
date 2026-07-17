cask "killall" do
  version "1.0.4"
  sha256 "2f8871217363272239ceebc96592aa72e247ba5207311d01e7dc2564f45a9588"

  url "https://github.com/YangMuto/kill_all/releases/download/v#{version}/KillAll-#{version}.zip"
  name "KillAll"
  desc "Menu bar monitor that kills stray dev processes (node/python/vite/…)"
  homepage "https://github.com/YangMuto/kill_all"

  app "KillAll.app"

  # 未签名分发：装完请去掉隔离属性再打开（或用 `--no-quarantine` 安装）
  caveats <<~EOS
    KillAll 未做 Apple 签名。若打开被拦，执行一次：
      xattr -dr com.apple.quarantine "/Applications/KillAll.app"
    或安装时加 --no-quarantine：
      brew install --cask --no-quarantine #{token}
  EOS

  zap trash: [
    "~/Library/Preferences/com.local.killall.plist",
  ]
end
