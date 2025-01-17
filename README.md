# Popup translation

一款基于 tauri 的弹窗翻译软件

1. 划词翻译
   - Linux(x11) 可直接获取到光标选中的文本
   - Macos 以及 Windows 是通过模拟一次复制操作,然后在读取粘贴板实现
2. 显示隐藏/窗口 `alt+s`
3. 支持的平台
   - Google
   - Deepl
   - Chatgpt

## Installation

<https://github.com/fzdwx/popup-translation/releases>

## Developer

环境:

1. pnpm
2. cargo
3. tauri-cli `cargo install tauri-cli`

启动项目:

```shell
pnpm install
cargo tauri dev
```

## Screenshots

![image](https://user-images.githubusercontent.com/65269574/225850537-fc795f36-802e-4bf2-9b6d-48e0f5435c1a.png)

![gif](https://github.com/fzdwx/popup-translation/raw/tauri/.github/show.gif)

## Thanks

1. <https://github.com/akl7777777/bob-plugin-akl-deepl-free-translate>
2. <https://github.com/tauri-apps/tauri>

## License

MIT
