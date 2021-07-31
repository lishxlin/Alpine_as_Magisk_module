# 这是什么？What's this?
一个包含了Alpine最小化运行环境的magisk模块。
A Magiak module of Alpine minimal environment.
# 怎么用？How to use?
很简单，但又可能很复杂（对于某些用户来），一共需要3步完成，还有一步可选。

Very easy,but may very complex(for some users),3 steps to complete, another one is optional.

### STEP 1
下载**Alpine_Chroot_rootfs.zip**，**Alpine_Chroot_Extractor.zip**

Download **Alpine_Chroot_rootfs.zip**,**Alpine_Chroot_Extractor.zip**

### STEP 2
打开Magisk，刷写**Alpine_Chroot_rootfs.zip**，然后重启手机。

Open Magisk,flash **Alpine_Chroot_rootfs.zip** then reboot your phone.

> 注意这个时候不要安装**Alpine_Chroot_Extractor.zip**
>
> Attention! Don't flash **Alpine_Chroot_rootfs.zip** at this moment!

### STEP 3
重启后，请刷写**Alpine_Chroot_Extractor.zip**，这个时候再次重启手机，下一次开机后，便可以使用<kbd>alpine_launcher</kbd>指令启动Alpine Chroot了

After you reboot,you need flash another package **1Alpine_Chroot_Extractor.zip**,after flash,you need reboot again.After this reboot,you can use command <kbd>alpine_launcher</kbd> to start Alpine Chroot.

### STEP 4 (OPTIONAL)
移除模块**Alpine Chroot Rootfs Extractor**

Remove module **Alpine Chroot Rootfs Extractor**

# 当前使用的是哪个版本的Alpine？

# Which version of Alpine that this module use？
Architecture:***aarch64***

Version:***3.14***

# TODO-LIST
- [ ] 完善Readme

- [ ] 创建Wiki

- [ ] 完善这个模块
