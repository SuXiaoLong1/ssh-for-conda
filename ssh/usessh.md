# 新建用户 
    useradd sxl
  
    passwd sxl
  
    chown sxl:sxl /home/sxl


# 远程连接
    ssh sxl@10.32.129.158
  
    密码：xxxxxxxxx
  
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
  
