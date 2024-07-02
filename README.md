# sketchybar_theme


由于我的Mac有“刘海”，所以当我打开如IntelliJ IDEA等软件时，菜单栏就会显示很多的应用程序菜单（显示当前活动应用程序的菜单，包括文件、编辑、视图等菜单选项）导致状态菜单（位于菜单栏的右侧，显示系统状态和功能的图标，例如 Wi-Fi 状态、电池电量、时钟、音量控制等）被挡。因为我在状态菜单处使用了iStat Menus，能够及时看到电脑状态，现在被挡住之后我无法再进行观察

所以我在GitHub上找到了sketchybar这个开源项目，使用了里面一些热心大佬提供的插件，并在此基础上进行了改造，最终得到了目前的菜单栏

目前菜单栏的功能：最左侧的苹果图标点击后可显示如下三个选项，第一个是打开系统设置，第二个是打开活动监视器，第三个是锁屏（脚本是通过运行快捷键`Control + Command + Q`，请注意自己电脑锁屏快捷键是否为当前这个）


![](https://cdn.jsdelivr.net/gh/codejaron/auto-image/obsidian/CleanShot%202024-06-10%20at%2013.07.20@2x.png)

左侧菜单栏还有桌面显示，如下图，我现在第一个桌面有vscode、访达和iterm，第二个桌面有arc浏览器

![](https://cdn.jsdelivr.net/gh/codejaron/auto-image/obsidian/CleanShot%202024-06-10%20at%2012.45.36@2x.png)

右侧菜单栏从左到右依次为Spotify控制器、网络监视、内存监视、CPU监视，微信消息数、QQ消息数、电池、WI-FI、日期

![](https://cdn.jsdelivr.net/gh/codejaron/auto-image/obsidian/CleanShot%202024-06-10%20at%2012.52.24@2x.png)

点击最右侧的日期还可隐藏电池、WI-FI、日期的年月日，点击Wi-Fi还可展示当前私有IP地址



![](https://cdn.jsdelivr.net/gh/codejaron/auto-image/obsidian/CleanShot%202024-06-10%20at%2013.24.24@2x.png)

![](https://cdn.jsdelivr.net/gh/codejaron/auto-image/obsidian/CleanShot%202024-06-10%20at%2013.26.14@2x.png)

**如何配置**
将我github中的文件复制到`/Users/你的用户名/.config/sketchybar`路径内即可
