# 服务器远程连接

注：使用ssh进行远程连接必须让电脑和服务器在同一个局域网中（如：校园网）。使用之前请检查是否在同一个局域网内或做了内网穿透。

# 一、检查电脑是否有ssh：
```
1. Win+R键入cmd，回车，打开命令提示符 或者打开 Windows PowerShell
2. 在命令提示符里键入ssh,若提示无该命令则需要下载ssh。
3. Win+S，键入服务，打开本地服务界面，找到OpenSSH SSH Server，启动方式改为自动
```
# 二、在服务器添加用户

1. 使用管理员账号登录服务器
2. 打开终端
3. 使用```su```命令开启root权限
4. 使用以下命令添加新用户：
    ```
    useradd name                     //添加新用户
  
    passwd name                      //为用户设置密码
  
    chown name:name /home/sxl        //给予用户目录权限
    ```
# 三、远程登录

使用服务器添加的账号和密码远程登录

1. 开启ssh服务

        ssh name@xxx.xxx.xxx.xxx           //name为服务器账户名，xxx.xxx.xxx.xxx为你的ip
   
2. 使用密码登录
   
        密码：xxxxxxxxx                   //xxxxxxxxx为用户在服务器的账号密码
  
# 四、安装conda：
1. 启动bash

        bash
    
2. 安装conda

        mkdir conda
        
        cd conda
        
        wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py38_4.8.3-Linux-x86_64.sh --no-check-certificate
        
        cd miniconda
        
        bash Miniconda3-py38_4.8.3-Linux-x86_64.sh
   
4. 检查conda是否安装成功
   
        source ~/.bashrc
        
        conda -V
        
        conda env list
# 五、使用conda
1. 创建conda虚拟环境
   
        conda create -n pose python=3.9
        
        conda activate pose

3. 安装python文件
   
        conda install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
  
# 六、设置ssh连接后conda自动运行
    将ssh文件夹的文件复制到用户目录（一般为/home/name）
