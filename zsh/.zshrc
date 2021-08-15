#开启自动补全：
autoload -U compinit promptinit
compinit
promptinit

#添加下面的配置可以启动使用方向键控制的自动补全：
zstyle ':completion:*' menu select

# 设置 walters 主题的默认命令行提示符
prompt walters

#加载自动建议插件，能够自动提示你需要的命令
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#代码高亮插件，能够使你的命令行各个命令清晰明了。
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh