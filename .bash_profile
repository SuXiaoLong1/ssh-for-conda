if [ -z "$BASH" ];then
	exec /bin/bash
fi
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
