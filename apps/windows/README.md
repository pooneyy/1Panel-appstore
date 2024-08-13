<h1 align="center">Windows<br />
<div align="center">
<a href="https://github.com/dockur/windows"><img src="https://github.com/dockur/windows/raw/master/.github/logo.png" title="Logo" style="max-width:100%;" width="128" /></a>
</div>
<div align="center">


</div></h1>

在 Docker 容器内运行 Windows 。

## 使用说明

要验证您的系统是否支持 KVM，请运行以下命令：

```
sudo apt install cpu-checker
sudo kvm-ok
```

如果您根本没有收到来自`kvm-ok`的任何错误，但容器仍然抱怨`/dev/kvm`丢失，则将`privileged: true`添加到您的 compose 文件（或`--privileged`到您的`run`命令）可能会有所帮助，排除任何权限问题。