# GO IDE (starter.lvim)

A great starting point for your `Go` LunarVim journey!

# Configuration

You have 2 options when it comes to using this IDE configuration:
1. Use the `Go` plugin ["ray-x/go.nvim"](https://github.com/ray-x/go.nvim). This is a really powerful 
almost all-in-one `Go` plugin with LSP, debugging, testing helpers, etc
2. Use a simple `gopls` LSP, DAP (uses ["leoluz/nvim-dap-go"](https://github.com/leoluz/nvim-dap-go)), 
and `gofumpt` + `goimports` formatters from `null-ls`

## Using ray-x/go.nvim

If you want to use ["ray-x/go.nvim"](https://github.com/ray-x/go.nvim) just make sure that the 
`GOIDE_CONFIG.rayx_gonvim` is set to `true` (`true` is the default).
One you do that and run a `:PackerSync` you will have the necessary plugins installed.
Next run `:GoInstallBinaries` and this will install all the necessary binaries which the plugin uses.

If you set the `GOIDE_CONFIG.rayx_gonvim_format_on_save` to `true` (`true` is the default), then an 
autocmd will be registered so that when you save a `*.go` file it will run the plugin with auto format.

One of the options that is very useful for some is the `max_line_len` which uses a program called `golines` to 
make sure your code is a max length of character (based on the configuration option set). To change the plugin setup 
options, go to the [lua/user/goide.lua](./lua/user/goide.lua) and change the setup options inside the `M.setup_gonvim` method.
For more configuration options on this plugin please go [here](https://github.com/ray-x/go.nvim#configuration).

## Using simple LSP, DAP setup
Set the `GOIDE_CONFIG.rayx_gonvim` to `false` (`true` is the default) then this will setup 
`dap-go`, `gopls` as well as the `null-ls` formatters (`goimports` & `gofumpt`).
You then will have to make sure the following are installed:
- [gopls](https://github.com/golang/tools/tree/master/gopls)
- [goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)
- [gofumpt](https://github.com/mvdan/gofumpt)
- [delve](https://github.com/go-delve/delve)

Only after all of this will you be able to have everything ready to start coding.
