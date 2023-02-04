# bit-graduate-thesis
Refer to https://github.com/BITNP/BIThesis

首先在ubuntu中配置latex相关环境（texlive），网上教程较多，如[此链接](https://blog.csdn.net/grey_csdn/article/details/119881685)。

然后安装相关字体
```
$ sudo apt install ttf-mscorefonts-installer
$ sudo fc-cache
```

直接编译即可。
```
cd bit-graduate-thesis
make
```
