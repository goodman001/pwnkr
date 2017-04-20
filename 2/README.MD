# pwnable 2
##### linux中返单引号的使用 ` : 
***反单引号中可以进行命令替换***``：key words 命令替换
在输出一句话的时候，如果想中间加入命令输出结果，在反引号里面输入命令就可以做到，和$COMMAND是一样的。

    [root@localhost ~]# echo today is `date +%F`
	     today is 2016-08-03
		  ##### 不可见字符串输入
		  c/c++/python等输入字符时，可通过\x进行（输入不可见字符时）
		  例如 \x16 表示 一个char字符 其值为 0x16
		  ##### 字符串截断 0x00
		  十六进制 二进制 4 4 规则
		  思路：
		  hash/5
		  ./col  ` python -c  'print  5*"\x06\xC5\xCE\xC8" ' ` 
		  注意点：tab字符问题 16进制数
		  16进制数除法可能存在小数问题？
		  内存中数值分布问题（高位在内存高位 ，读取整型数据从高位往后读取）
		  key:
		  ./col  ` python -c  'print  "\xC8\xCE\xC5\x06" + 4*"\xc9\xce\xc5\x06"  ' `
