# YangMuto Homebrew Tap

## KillAll — 菜单栏开发进程监控/清理工具

```bash
brew tap yangmuto/tap
brew install --cask killall
xattr -dr com.apple.quarantine /Applications/KillAll.app   # 未签名，必须去隔离否则打不开
open -a KillAll
```

若提示 `untrusted tap`（新版 Homebrew 安全机制），先信任一次：

```bash
brew trust yangmuto/tap
```

- 本 app 未做 Apple 签名，Homebrew 安装时仍会加隔离属性，所以要执行一次上面的 `xattr` 才能打开。
  （Homebrew 6 已移除 `--no-quarantine` 参数。）
- 打开后菜单栏出现 ⚡ 图标，点击查看/清理后台残留开发进程。
- 首次打开自动加入登录项（开机自启），面板底部可关。
- 源码：https://github.com/YangMuto/kill_all

升级 / 卸载：

```bash
brew upgrade --cask killall
brew uninstall --cask killall
```
