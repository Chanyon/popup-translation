# Popup translation

通过 wry 打开一个 webview 窗口，然后打开某个翻译平台的网页翻译内容，并通过 js 代码屏蔽掉不需要的内容，专注于翻译内容本身。

![img.png](.github/one.gif)

## 💫 Features

1. 利用 wry 提供的网页视图功能实现的弹窗功能
2. 从剪贴板读取文本并翻译
    - 在 *Linux(x11)* 下支持所选文本的翻译，即不需要复制到剪贴板 <https://github.com/fzdwx/popup-translation/issues/3>
    - 在 *Windows* 以及 *Macos* 模拟一次 `ctrl+c` 后，在读取剪贴板的内容
3. 从命令行传入文本进行翻译
4. 支持多种翻译平台
    1. [Bing](https://www.bing.com/)
    2. [Youdao](https://www.youdao.com/)
    3. [YouGlish](https://youglish.com/)
    4. [Dict](https://dict.cn/)
    5. [openai](https://openai.com/) `fanyi -p ai --key=xxx hello`
    6. Google

## 🚀 Getting Started

安装:

```shell
cargo install --git https://github.com/fzdwx/popup-translation

# 或者在 release 页面下载(目前只提供 windows 以及 macos 的预编译程序) 
# https://github.com/fzdwx/popup-translation/releases
```

使用:

```shell
# 命令行直接设置翻译文本，只运行一次
fanyi hello
fanyi -p youdao 你好

# 守护模式，可以一直翻译，`ctrl+shift+c` 打开窗口
fanyi

# 覆盖快捷键，使用 `alt+s` 打开窗口
fanyi --show=alt+s

# 设置窗口显示位置，默认为鼠标附近
fanyi --position=100,100

fanyi --help
```

## 🕹️ Integrated

### nvim

```lua
map("n", "<leader>fy", function()
    local word = vim.fn.expand("<cWORD>")
    local cmd = { "fanyi", word }
    vim.fn.jobstart(cmd, { detach = true })
end, { desc = "qwe" })
```

![gif](https://user-images.githubusercontent.com/65269574/218270052-0338693e-31fd-458b-ac03-f668b6ffd8d2.gif)

## 🦹 TODO

- [x] 弹窗位置选项(当前是固定获取鼠标附近)
  - --Position=top-left, top-center , top-right, bottom-left, bottom-center , bottom-right, center
  - --Position=tl, tc, tr, bl, bc, br, c
- [ ] 热键
  - [x] open
    - [x] 从粘贴板读取数据
    - [ ] 读取鼠标选择的数据
      - [x] Linux
      - [x] Windows
      - [x] MacOS
  - [ ] close
- [ ] 全程只使用一个 webview

## 📖 Thanks

1. [manateelazycat - popweb](https://github.com/manateelazycat/popweb/blob/main/extension/dict/popweb-dict.el)
2. [wry](https://github.com/tauri-apps/wry)

## License

MIT
