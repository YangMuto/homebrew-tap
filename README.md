# YangMuto Homebrew Tap

## KillAll — 菜单栏开发进程监控/清理工具

```bash
brew tap yangmuto/tap
brew install --cask --no-quarantine killall
```

若提示 `untrusted tap`（新版 Homebrew 安全机制），先信任一次：

```bash
brew trust yangmuto/tap
```

- `--no-quarantine`：本 app 未做 Apple 签名，加此参数装完可直接打开。
- 打开后菜单栏出现 ⚡ 图标，点击查看/清理后台残留开发进程。
- 源码：https://github.com/YangMuto/kill_all

升级 / 卸载：

```bash
brew upgrade --cask killall
brew uninstall --cask killall
```
