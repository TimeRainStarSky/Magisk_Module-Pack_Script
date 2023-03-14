#模块已经过编译，运行脚本自动释放安装 作者：时雨🌌星空
NAME="v1.0.0";VERSION="202207040"
[ "$(id -u)" = 0 ]||{ echo "- 正在获取root权限";exec su -c "sh \"$0\" \"$@\"";};runtime(){ RUNTIME="/data/adb/TimeRainStarSky/Runtime";export PATH="/data/adb/magisk:$PATH";[ -d "$RUNTIME" ]&&[ -f "$RUNTIME/verify" ]&&[ "$(ls "$RUNTIME")" = "$(cat "$RUNTIME/verify")" ]||{ echo "- 正在配置运行环境";abort(){ rm -rf "$RUNTIME";echo "! $@";exit 1;};rm -rf "$RUNTIME";mkdir -p "$RUNTIME";setcmd(){ CMDPATH="$(command -v "$1")"&&cp "$CMDPATH" "$RUNTIME"&&"$RUNTIME/$@"|tr " " "\n"|while read i;do [ -z "$i" ]&&continue;ln -sf "$1" "$RUNTIME/$i";done||abort "找不到$1，请安装运行环境后重试";};setcmd busybox --list;setcmd toybox;ls "$RUNTIME">"$RUNTIME/verify";};export PATH="$DIR:$RUNTIME:$PATH";export LD_LIBRARY_PATH="$DIR:$RUNTIME:$LD_LIBRARY_PATH";};export DIR="/data/adb/TimeRainStarSky/MMOnline";runtime;echo "—————————————————————————————
 Magisk Module Online Script
     $NAME ($VERSION)
—————————————————————————————
      作者：时雨🌌星空

- 正在设置环境";abort(){ rm -rf "$MODPATH";echo "
! $@";exit 1;}
mktmp(){ TMP="$(dirname "$(realpath "$0")")/tmp"&&rm -rf "$TMP"&&mkdir -p "$TMP"||abort "创建缓存文件夹失败";}
offline(){ echo "
  当前时间：$DATE
  脚本路径：$MODFILE$([ -n "$*" ]&&echo "
  附加参数：$*")
  设备代号：$(getprop ro.product.device)
  设备型号：$(getprop ro.product.marketname) ($(getprop ro.product.name))
  认证型号：$(getprop ro.product.model)
  安卓版本：$(getprop ro.build.version.release) (SDK $(getprop ro.build.version.sdk))
  系统版本：$(getprop ro.build.version.incremental) ($(getprop ro.build.display.id))
  编译时间：$(date -d "@$(getprop ro.build.date.utc)" "+%F %T")
  内核版本：$(uname -r)
  基带版本：$(getprop gsm.version.baseband|cut -d "," -f1)
  面具版本：$(magisk -c)

  模块代号：$MODID
  模块名称：$MODNAME
  模块版本：$MODVER
  模块版号：$MODVERC
  模块作者：$MODAU
  模块介绍：$MODDESC
  打包时间：$PACKDATE

- 正在释放模块
";MODPATH="/data/adb/modules_update/$MODID";MODDIR="/data/adb/modules/$MODID";rm -rf "$MODPATH"&&mkdir -p "$MODPATH"||abort "模块文件夹创建失败";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$MODFILE"|head -n 1)" "$MODFILE"|xzcat|tar -xvC "$MODPATH"||abort "模块释放失败";echo "
- 正在校验模块
";sh "$MODPATH/verify.sh" "$MODPATH"||abort "模块校验失败";mkdir -p "$MODDIR";cp -rf "$MODPATH/module.prop" "$MODDIR";touch "$MODDIR/update";echo "
- 正在执行安装脚本
";. "$MODPATH/install.sh"||abort "安装脚本执行失败";echo "
- 模块安装完成，用时：$(expr "$(date +%s)" - "$(date -d "$DATE" +%s)")秒";exit;}
abort_update(){ echo "
! $@";[ "$N" -lt 8 ]&&{ let N++;download;}||{ echo "
! 脚本下载失败，使用离线版本";offline;};}
download(){ case "$N" in
  2)SERVER="GitHub";URL="https://raw.githubusercontent.com/TimeRainStarSky/MMPack/online";;
  1)SERVER="Gitee";URL="https://gitee.com/TimeRainStarSky/MMPack/raw/online";;
  3)SERVER="Agit";URL="https://agit.ai/TimeRainStarSky/MMPack/raw/branch/online";;
  4)SERVER="GitLab";URL="https://gitlab.com/TimeRainStarSky/MMPack/raw/online";;
  5)SERVER="Coding";URL="https://trss.coding.net/p/MMPack/d/MMPack/git/raw/online";;
  6)SERVER="Aliyun";URL="https://code.aliyun.com/TimeRainStarSky/MMPack/raw/online";;
  7)SERVER="Bitbucket";URL="https://bitbucket.org/TimeRainStarSky/MMPack/raw/online";;
  8)SERVER="Jsdelivr";URL="https://cdn.jsdelivr.net/gh/TimeRainStarSky/MMPack@online"
  esac;echo "
  正在从 $SERVER 服务器 下载版本信息";GETVER="$(eval geturl "$URL/version")"||abort_update "下载失败";NEWVER="$(echo -n "$GETVER"|sed -n s/^version=//p)";NEWNAME="$(echo -n "$GETVER"|sed -n s/^name=//p)";MD5="$(echo -n "$GETVER"|sed -n s/^md5=//p)";[ -n "$NEWVER" ]&&[ -n "$NEWNAME" ]&&[ -n "$MD5" ]||abort_update "下载文件版本信息缺失";echo "
  最新版本：$NEWNAME ($NEWVER)

  开始下载";mktmp;eval geturl "$URL/MMExtract.sh">"$TMP/MMExtract.sh"||abort_update "下载失败";[ "$(md5sum "$TMP/MMExtract.sh"|head -c 32)" != "$MD5" ]&&abort_update "下载文件校验错误";echo "
- 脚本下载完成，开始执行";sh "$TMP/MMExtract.sh"||abort "执行下载文件失败";exit;}
update(){ echo "
- 正在下载在线脚本";if curl --help &>/dev/null;then alias geturl="curl -L --retry 2 --connect-timeout 5";elif wget --help &>/dev/null;then alias geturl="wget -T 5 --no-check-certificate -O -";else echo "
! 找不到下载命令，使用离线版本";offline;fi;N=1;download;}
export DATE="$(date "+%F %T")";export MODFILE="$(realpath "$0")";cd "$(dirname "$MODFILE")";export MODTYPE=;export MODID="TRSS_Boot_Tools";export MODNAME="TRSS - Boot_Tools";export MODVER="v2.3.0(TWRP-v3.6.2 SK-v3.8.3)";export MODVERC="202207200";export MODAU="时雨🌌星空";export MODDESC="V-AB分区设备在线安装TWRP和Magisk，卸载模块重启后还原boot备份";export PACKDATE="2022-07-20 17:12:41";if [ -f "$DIR/MMOnline.sh" ]&&[ "$(head -n 1 "$DIR/MMOnline.sh")" = "#MMPack 在线Magisk模块安装脚本 作者：时雨🌌星空" ];then PROTOCOL="v1";VERIFY1="$(echo "$RANDOM"|base64|md5sum|head -c 32)";VERIFY2="$(echo "$VERIFY1-$PROTOCOL"|base64|md5sum|head -c 32)";VERIFY3="$(echo "$VERIFY2-$PROTOCOL"|base64|md5sum|head -c 32)";VERIFY0="$(sh "$DIR/MMOnline.sh" verify "$VERIFY1" "$VERIFY2")";if [ "$(echo "$VERIFY0"|tr " " "\n"|sed -n s/^VERIFY=//p)" = "$VERIFY3" ];then echo "
  协议版本：$PROTOCOL
  脚本版本：$(echo "$VERIFY0"|tr " " "\n"|sed -n s/^NAME=//p) ($(echo "$VERIFY0"|tr " " "\n"|sed -n s/^VERSION=//p))

- 脚本验证成功，开始执行";sh "$DIR/MMOnline.sh";else update;fi;else update;fi;exit;定位符
�7zXZ  �ִF !   �X��O�] 4������.��S�-c�ͭ��;�y$��=]�	H��\7EV�9��\�&�lzՐAd���r�M���q?�@���nr�[^�w\+<MO��o8����0I�4��-f;�n�~��~�q�'3��bQߺ��JYW�@�8���NXߏN,�H����Q�ÀT
`՟�yO�FՓ���Lj���2Uሙ��]�ԗٔ���<�\�:�}F�C��r��F��	�lB�v�Q8oѧ�\ 5�ʜv��R�S���g�.f�r�S>"�[�b2��S%���Ey++H1}hO9b�.����p��y�{����-���ˡ�k	�^����4�l�M�!̭(C���\�ƒMtIIcT�0S�B�bE�8+5��Qh6��(X���V:�q�Y{�9�4[H�l��'�!�*�ۖ�%[A�C���=��u�!!N;x�S��x������w���q�#m��������)�VH�)���h�L����%Y{@ǫ`F�ǎ6w+�a]P�G���=�O<�~!4��fjx2=��^�����[�h�{$�|�m�O�n:�[J�[���G�7�*���{�{J��B�_x��ۯ5��$�l?e���X^�`�`��âIW����`��C@[U���=\�.�/_2~��H�wϿY�j��G{O�̑3��g��.�X���V.8��!S�:��bi�]�w�tݴ���:#�m��S�u��R.�Pr{i����]}�J���i}D�
/�q_��š:A7E��y�\ڒd��y�����^9��6���y�#-���jJnXx�L-#�V�v:�,���9�\��qr|�mt۱^�=#x��G��/� ��7�!Z��r(O��a�W^q1T����@Ee��'-KF�>���m�Q�Y���9A�3�Ef�%�!�bbh��.�0�W�m#��*�y�̭Yr�䝔�l�Ed>��E���s]2�)fl�.�R�ylЊu��pX��]�
����p�B���?��s^!�A���$F[��9`R_��=�=z������C��:<��'�.>��)���¹���I��ꍲ���,����|���ޒ����_�2�	E�P r3��UU�}����ؒ�m��nJ>4�i�U����t��˳���:i��{�xf�D��$�#}��y4L��ߥm� ���AgͰK����y��${��������G��x���.%}�9[�@V�\s���+�I{�����ou�Y׼G}�����"������vV���������]����9�������t�C�h���b�)4�N/_7ՙb� j3��1]{��^��Ć?���b�ۆ�Q爷+kOG�O�fQ�{f��n��[j&��a�婡��x7��,�{�nm�M.�4�2��"q	'� R����� L��[�'|�hjZa���{��͗��d��/M���XT�S�O|-��j��n4�X��YY�' ��o;�P_�юvɘ����8WA;Jǥ��9Mǀ�"���&YӇ	N�;��.X��-.��dg��-`Wtc�Jo�	uU�ǌ��$��*�B..�q%�ũ{S�	}|��[0��[�Ǫ����9�H@/�$�m����䱶~S�Vv�ᯔ���0��حR���@�it�v�WC�1���2��܎���6J���,F̓�f@��/���Kk�YRB�Dx����GtQ.�'�΁Y�T�9`��#/�Cs��2/����G~���E�O�� �}���v���U(���/`��wJ7i�$k�ǫ�GXa����O��}�~藐@_e��Q疗�%���`��! �L��j��h���VP.�ꛒFp�~�,~cF�,�mE���O�k4X��oe���U��[�V�Ck�?˛��֐�:�G�?BŒ��Cۄ%x����G�o�=W��:�˖g�IP:"�R����>��Ú�����$v���.ٍ\�{�n)]v�*<Hdq&|K��ktl�w^cI-���"{Y�y���<;�M�M�@�gŕ�����MZ7��X��g��T?4M3X����פa����Uy9��_�G �,}K_'�rEuGs��a����@in�\<�$�7M��-E������w�\��k���-����p
'��Rn.g,��*]k��'|��`y���+Dt���<=ʓy���o���k��������f�$7wtL�-�Ъ�vM��ʻ�+m ��Py�(p�d)�,ڻYB�~���'?%݉	�4��^�gBj�ݻ�ݨ>�i�Ŧ �F�������k4����Vt/����pH>��o�DN:C�6,���l�C����}omp���7�ŶU��ׂ�.��E��'t=�vZ舭Z�v���(�1�AV7L�7����"��۔���o���=�r�EJ�ZLz o�ؒ�O	� �{r6G�R0TٞN��JmjDa���S#R�+ͩ"˩B��خ[�#(��$ ��f]]j@�
,O��G��/klK�	��!`�P��TC�/{_e �l��CO|��Gk���:��b��[z��[��v���п�iw��o�����J��Ȋ��wI!�6�-*���H�9����#�e��U�Ԝ���T~��o�3Q��*����zge�rK��dͺ��-�X��"h�s���߈m?$�����g�F���|OJBP8T��<]'d��Ƨ���iMk{UH�#�AN+�ۆ=o�4�b{���!��-������N��&��*Uw�'���aޔ���"4��/;���6=2��r,*�    ��I\! � ��� xi7���g�    YZ