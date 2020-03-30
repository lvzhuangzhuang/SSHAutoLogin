## 使用帮助
- `ssh_login -c` - 修改账号配置
- `ssh_login -l` - 列出所有账号配置
- `ssh_login -h` - 显示帮助文档
- `ssh_login [0-9]+` - 使用列表序号快速登录服务器
- `ssh_login [a-zA-z]+` - 使用配置别名快速登录服务器
- `ssh_login` - 列出服务器列表，等待输入后登录服务器

## 特殊说明
如果密码中含有以下特殊字符，请按照一下规则转义：
- \ 需转义为 \\\\\
- } 需转义为 \\}
- [ 需转义为 \\[
- $ 需转义为 \\\\\\$
- \` 需转义为 \\`
- " 需转义为 \\\\\\"
- . 需转义为 \\.

```
如密码为'-OU[]98' 在CONFIG配置中写成'-OU\[]98'
否则，提示要手动输入密码
```
