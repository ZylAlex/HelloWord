@echo off  
:start  
cls  
echo               网络设备在线情况检测  
echo,  
echo        1 营业一部 IP:192.168.81.2  
echo        2 营业二部 IP:192.168.82.2  
echo        3 集团一线路   IP:192.168.71.1  
echo        4 集团二线路   IP:66.66.66.1  
echo        5 集团三线路   IP:77.77.77.3（实际网关为77.77.77.2）  
echo ---------------------  
echo        6 语音线路 IP:10.96.166.2  
echo        7 数据线路 IP:10.96.166.6  
echo ---------------------  
echo        9 全部  
echo,  
echo        0 退出  
  
set/p a=请选择：  
if %a%==1 start "营业一部 IP:192.168.81.2" "echo 营业eee部&&ping 192.168.0.91"  
if %a%==2 start "营业二部 IP:192.168.82.2" "cmd /k echo 营业二部&&ping 192.168.82.2"  
if %a%==3 start "集团一线路   IP:192.168.71.1" "cmd /k echo 集团一线路  &&ping 192.168.71.1"  
if %a%==4 start "集团二线路   IP:66.66.66.1"   "cmd /k echo 集团二线路  &&ping 66.66.66.1"  
if %a%==5 start "集团三线路   IP:77.77.77.3"   "cmd /k echo 集团三线路  &&ping 77.77.77.3"  
if %a%==6 start "语音线路 IP:10.96.166.2" "cmd /k echo 语音线路&&ping 10.96.166.2"  
if %a%==7 start "数据线路 IP:10.96.166.6" "cmd /k echo 数据线路&&ping 10.96.166.6"  
:: 两个冒号是注释行。注意下面的内容，当在一个IF中出现多条要执行的语句时要用小括号将所有语句括号来，并且只能每行一条执行语句  
if %a%==9 (  
start "营业一部 IP:192.168.81.2" "cmd /k echo 营业一部&&ping 192.168.81.2"  
start "营业二部 IP:192.168.82.2" "cmd /k echo 营业二部&&ping 192.168.82.2"  
start "集团一线路   IP:192.168.71.1" "cmd /k echo 集团一线路  &&ping 192.168.71.1"  
start "集团二线路   IP:66.66.66.1"   "cmd /k echo 集团二线路  &&ping 66.66.66.1"  
start "集团三线路   IP:77.77.77.3"   "cmd /k echo 集团三线路  &&ping 77.77.77.3"  
start "语音线路 IP:10.96.166.2" "cmd /k echo 语音线路&&ping 10.96.166.2"  
start "数据线路 IP:10.96.166.6" "cmd /k echo 数据线路&&ping 10.96.166.6"  
)  
if %a%==0 goto end  
goto start  
:end 