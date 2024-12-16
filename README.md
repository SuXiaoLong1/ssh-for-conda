
# 使用管理员账号在服务器添加用户
# 新建用户 
    useradd name
  
    passwd name
  
    chown name:name /home/sxl

# 使用本人账号远程登录
# 远程连接
    ssh name@xxx.xxx.xxx.xxx           //name为服务器账户名，xxx.xxx.xxx.xxx为你的ip
  
    密码：xxxxxxxxx                   //xxxxxxxxx为用户在服务器的账号密码
  
# 远程连接后：
# 启动bash
    bash
# 安装conda
    mkdir conda
    
    cd conda
    
    wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py38_4.8.3-Linux-x86_64.sh --no-check-certificate
    
    cd miniconda
    
    bash Miniconda3-py38_4.8.3-Linux-x86_64.sh
# 检查conda是否安装成功
    source ~/.bashrc
    
    conda -V
    
    conda env list
# 创建虚拟环境
    conda create -n pose python=3.9
    
    conda activate pose
# 安装包
    conda install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
  
# 设置ssh连接后conda自动运行
    将ssh文件夹的文件复制到用户目录（一般为/home/name）
