#模块已经过编译，运行脚本自动释放安装 作者：时雨🌌星空
NAME="v1.0.0";VERSION="202205150"
[ "$(id -u)" = 0 ]||{ echo "- 正在获取root权限";su -c "sh \"$0\" \"$@\"";exit;};runtime(){ RUNTIME="/data/adb/TimeRainStarSky/Runtime";export PATH="/data/adb/magisk:$PATH";[ -d "$RUNTIME" ]&&[ -f "$RUNTIME/verify" ]&&[ "$(ls "$RUNTIME")" = "$(cat "$RUNTIME/verify")" ]||{ echo "- 正在配置运行环境";abort(){ rm -rf "$RUNTIME";echo "! $@";exit 1;};rm -rf "$RUNTIME";mkdir -p "$RUNTIME";setcmd(){ CMDPATH="$(command -v "$1")"&&cp "$CMDPATH" "$RUNTIME"&&"$RUNTIME/$@"|tr " " "\n"|while read i;do [ -z "$i" ]&&continue;ln -sf "$1" "$RUNTIME/$i";done||abort "找不到$1，请安装运行环境后重试";};setcmd busybox --list;setcmd toybox;ls "$RUNTIME">"$RUNTIME/verify";};export PATH="$DIR:$RUNTIME:$PATH";export LD_LIBRARY_PATH="$DIR:$RUNTIME:$LD_LIBRARY_PATH";};export DIR="/data/adb/TimeRainStarSky/MMOnline";runtime;echo "—————————————————————————————
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
  编译时间：$(date -d "@$(getprop ro.build.date.utc)" "+%F %X")
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
! $@";[ "$N" -lt "8" ]&&{ let N++;download;}||{ echo "
! 脚本下载失败，使用离线版本";offline;};}
download(){ case "$N" in
  "1")SERVER="GitHub";URL="https://raw.githubusercontent.com/TimeRainStarSky/MMPack/online";;
  "2")SERVER="Gitee";URL="https://gitee.com/TimeRainStarSky/MMPack/raw/online";;
  "3")SERVER="Gitle";URL="http://git.nbxianyuyun.cn:3000/TimeRainStarSky/MMPack/raw/branch/online";;
  "4")SERVER="GitLab";URL="https://gitlab.com/TimeRainStarSky/MMPack/raw/online";;
  "5")SERVER="Coding";URL="https://trss.coding.net/p/MMPack/d/MMPack/git/raw/online";;
  "6")SERVER="Aliyun";URL="https://code.aliyun.com/TimeRainStarSky/MMPack/raw/online";;
  "7")SERVER="Bitbucket";URL="https://bitbucket.org/TimeRainStarSky/MMPack/raw/online";;
  "8")SERVER="Jsdelivr";URL="https://cdn.jsdelivr.net/gh/TimeRainStarSky/MMPack@online"
  esac;echo "
  正在从 $SERVER 服务器 下载版本信息";GETVER="$(eval geturl "$URL/version")"||abort_update "下载失败";NEWVER="$(echo -n "$GETVER"|sed -n s/^version=//p)";NEWNAME="$(echo -n "$GETVER"|sed -n s/^name=//p)";MD5="$(echo -n "$GETVER"|sed -n s/^md5=//p)";[ -n "$NEWVER" ]&&[ -n "$NEWNAME" ]&&[ -n "$MD5" ]||abort_update "下载文件版本信息缺失";echo "
  最新版本：$NEWNAME ($NEWVER)

  开始下载";mktmp;eval geturl "$URL/MMExtract.sh">"$TMP/MMExtract.sh"||abort_update "下载失败";[ "$(md5sum "$TMP/MMExtract.sh"|head -c 32)" != "$MD5" ]&&abort_update "下载文件校验错误";echo "
- 脚本下载完成，开始执行";sh "$TMP/MMExtract.sh"&&exit||abort "执行下载文件失败";exit;}
update(){ echo "
- 正在下载在线脚本";if curl --help &>/dev/null;then alias geturl="curl --retry 2 --connect-timeout 5";elif wget --help &>/dev/null;then alias geturl="wget -T 5 --no-check-certificate -O -";else echo "! 找不到更新命令，使用离线版本";offline;fi;N=1;download;}
export DATE="$(date "+%F %X")";export MODFILE="$(realpath "$0")";cd "$(dirname "$MODFILE")";export MODTYPE=;export MODID="Hcfile_sharing";export MODNAME="MAT - 目录定向挂载";export MODVER="v1.22";export MODVERC="202205290";export MODAU="HChai && 时雨🌌星空（主要开发）";export MODDESC="自定义目录定向挂载 (存储重定向) 运行状态：[待重启]";export PACKDATE="2022-05-29 11:32:10";if [ -f "$DIR/MMOnline.sh" ]&&[ "$(head -n 1 "$DIR/MMOnline.sh")" = "#MMPack 在线Magisk模块安装脚本 作者：时雨🌌星空" ];then PROTOCOL="v1";VERIFY1="$(echo "$RANDOM"|base64|md5sum|head -c 32)";VERIFY2="$(echo "$VERIFY1-$PROTOCOL"|base64|md5sum|head -c 32)";VERIFY3="$(echo "$VERIFY2-$PROTOCOL"|base64|md5sum|head -c 32)";VERIFY0="$(sh "$DIR/MMOnline.sh" verify "$VERIFY1" "$VERIFY2")";if [ "$(echo "$VERIFY0"|tr " " "\n"|sed -n s/^VERIFY=//p)" = "$VERIFY3" ];then echo "
  协议版本：$PROTOCOL
  脚本版本：$(echo "$VERIFY0"|tr " " "\n"|sed -n s/^NAME=//p) ($(echo "$VERIFY0"|tr " " "\n"|sed -n s/^VERSION=//p))

- 脚本验证成功，开始执行";sh "$DIR/MMOnline.sh";else update;fi;else update;fi;exit;定位符
�7zXZ  �ִF !   �X��w�J] !�f�'��rJFy�o]��o�&�H@��&i�lxY�|8e�¬'l�����qxU���������J�o'��ۯN�5Ὅ��c�[��
@I��dZ�m�z�B��"��ʂ1�H��V<K(�=�CwZ�Z��"9�HB��LI�A%� �E���9���n����P�m�¸1���r���e�!C&ʧ��ڼ�h{q�K��Lj���R1<���
咎�Ȟ�~>��K�Sߋ���0�ť��eɨ��ҦRJ�JᚬX��Uw�K
p�ZE�:�h�l<�yZ,���o'[Y-j��x�h��?�%�C�Z��o.᮪�8�7�qD�RQ�rN��n!�lݡ�t�C��gg�X��Qt�A�)�~r�!�����r��t��aL���Dq5ğ��A�̳��׸�&�gjb+�,
L?�'>�[����2;0�za���U�0�n�r��Cf�xNBGn�E3�.p����0m~�`V�����qyf����˘ֵ���Tg#ѪoO�F�A��2�� �Jk�+�3�8�1�.��ù�W��<�R����s�5�~-�q!��D ��ʼ+���x��i�2�c�`��(��S���EI-�8k�ZGz.?h^����>Iv�U��aCM��8P�)�A��D~e���4OY�R.:�ͤWl37d���(�w�:q���Q\��9�˝R�����:UI���^���X��X
*��ڼ~tcqWt��B�k?*:�\�*OӸ4^������T�nk�k.5�R�Y?k�~��xTQ�.��,�E���Fn�#>0� ������<��zVK�:X͠5edW�O�^� �R䋺�ͺ~���\*�T�ed��T�K�Y���q�}���c�iI��D�S;}b�^����'��c\JO���=u������t8�hI��M���l�Z��';<�30{6���@ޜLT�AC������Aw��0��y2��4	�&��ץ��9D��!Ԋuw� �X	'���j��@U���􏓅 ��.#���	�]*��A
�B�ɘ�H�f��F��P} 9cs2�wh@阦��g�SpˏdVe���K�)m�~���/��·�lC��P�%L���{����d��V�3p*��ͤ�� t�%�>����iۨ�����Ҳ�$%�H<bs�le�,_����x�{1��EUe#�;�eb�ʎץ��~�u=���9��|��'	h�!�"K�kwx�w�	P��0�&��w��_�«�w/^� 4�R�}�������m!AjU ��}h����b��O��h����G�e�����sK�����*W���f<_i|W�+:�i�L�x���Pf�=[ɑ9�a�},:���n��3.g*Sj��޲@4_+g��QR��y�"�XռU�gpx��w{EiK���bAT��k֗$��=�ќ�m���1�C�0��<�$�0�6���c9br�I��!t��A�}��!з�J�z�S��>�.��#�и1U6������԰*��TU�9mݣa4_.W.���8ew'��#>Fx5��e�8���:�j�r�e�&F�[(�u���k[����~�F���AFq��5I���nF]֔�MbvĎ�1�r��HQ�I�hT��#\�-�q��-����s���
�!p�W���4����*���B��\��;����]̊o�^4C�{�P�8q�~�u���-�?��E:R����b��1N�*�<~!Q?��/*�h{��p.;�5��{��6|ykP`�t���y5G9_��#��ҵ{m��ǂ�����-f�YK;��Ѹ�x�U竁��,z~5���h��NF+�Nb��@ȐJ���n¹���;���!��
�}����)�������T��8Bib�ih�Q�m��-�3���:�o3i�(��)��(�G6g�˟&������q$�����窦��.oDK�F2�{��Z10�:�����u�P<��d]<=0��P�KD'������$���:���G��ON�'"�';�N��[}m��m���t�C�P_��d&�{X&J�����%��K��|?F�#�N�/�Cj�y�+
WZ�$S�k��Y���.x(trS�6	��v"<�ą0��$�ڜ���Ճ��>."i.�����]�S�C
��������k�����$���M�z�$�vy���5B����P��-�@$IN�s��9;0�'Ӱ��[����ʢ�.w�q)xd[gݸ��ĕ�4��?
�ކ{�/�=�[,6	�j�|�������N`{$�������N0�Hqq�!	�l�d.�'�2�m: ����L�S\�#L��dP�!���ԨY���3�G)��<bkP�X��C�DĒ6i���g��j�N\���B�.bIOvI8İ��~,�ۙ���~KG�p��-b���/����Z6��5�j&�P�^L���X^�Y�3��0�X��*VO��E��|�����Ž����qǈop]�B\��|I|e�0���j�V�c���H�Jq�&���VEW��a$(�ac�nAQ|���_�R�od*�H��1�x��[��L Jac����M�,9� 
;Ѵ
 o�#ڙ�q)�[Dm�]����i�������I@����r���>>3�h�y��-� ͑>G)-�J"���y�z����`6q~r�fp}egf�&�ԯ���+�0���\����9��#�R��$�a�ke�ɢZ&4���9S�N�Sj������Po��7�B�>�R���������r��+�Fɔ:B-:´br1H��K�<����4%Gb�'�+YL=���,p�|��-��V�e5U:�^�{�����Gf��
�
��xb�%6�|W�N������^4q��:PCw�2����wJ�z{���l�^Nˮr!�*P�u�%����`B)��K����q�X���[�F�H1��lmjgW%@�hc��$�9<Z"�"�jB,�j��޲�Xn�r�Z<SךDs%��I�q��U��U''���"W��������/XmOq'V["/8�15/2���|R�pu�S�D��	��fC�F��8u�M���dz�I�Z��` �8U ��/�%�!YOv��qR���|&$ T��z`U	c)T6ְ0�esE���'	� ����f#�/��48�,tjV����H�r������H�:�6���ZXV�::�/�4��Y�[�^��Q�+u���i��G�*cd�4w�o�"���T�9P�j(���(��A*��� �����-��8����_a�Z#����~�:F��3��=����ɐ9��uو8_�/�-�\��+�9��N6�q>.۹�]����x��K����.�>VĨ��鶕�5�&2�F�(����2��y>A��so�:�O �Dѿ�X[����� ��w��86�;���(�ʩu2�lV�]�L���;�<6���i�4mͤ3��@_����s'YL����5��>���ry��Ƃ���E�n�J�����'�8�vУ�[����lQt)���M�C|~��1�2{������⯢N���II��C�`Ά�m
�:Ȟ�js���:��#�wz��ir�]��ې�~�?A�S�BZxQ��"�!����j�(u
^��!'g��¤.6X���d�.���ʀγ}!]�um�k���gy�Q��7m\t,�b�ݧ}��,�����W�VQ�����!� �M����B����lh��O�Ҿ�Y.
��w��ZL����2ɯ5%������?�r��H;���ݧޗ�����|���Sz��P�V��V�6���5�M� ��R�8�4n��c0�[�q�����%6�u��m����{(4����'��P��@�+�E����H���W� *�U���Ѥ6(̼��X�{����:���lW[\��Vx�����U�d�:g5� �����JE������!bQ���J�����c�7jr1�F�����M��$��D�vyn����Ć�!����X�( `>HO^��V���ي\�Lt{�؋� 3R���2} ��5�=��{��A��K�:������V�QB�0W9��J��x�>�Y��&fX�Ny	��<n��R�&�)�G������qx���cq}5�-QU��q;kn+/A2;���YƵk�H�d��]�|��@��I,����Z�?(�n���O�q<�D4���2�^��3rjM���*�!�j7���M�1�������ˤ�ILx�\L��&��}j-�R�#H���[
Cx��E�ϝ*�z�]�@�;���ɺ$�PH�X����xS!��IU��62���ՙ2�f�cH�ޑ�k1��n���(���W2)�
V��t��S�EmM���ٯ���Y���#�ȝ) ;%y�U��c�C�p�ap����Y�+OD��C�y'ر&-wح��~���V�H������F�o9T�b���?9���\����!Ir�o���X)��>�%�W��o9��d���=���D|y5�C�/%d>�bꈱc��TA��d�"�����>L�~�V-�X�5g�6Ⳉ�O��X)J�x��b|�������{��Co��{@�O)�|�ZyI�A}�M���h=uXⱿ��itݺ��E�\g>�6��P�?��>���+(�є)��v�0{g��%o@6!����B4Xײ�{��̩��b\�{9�>E(>|[��VE��#���^�}u$U�!I}$���
5�&���t�k4+#]>�x42Ww"��ݸX��P��`�"|
]2��уt��#c�|�ѪT��'�R�a~���h]�츿�߃��-d�**�12�R���џ؋40���%'������7���h�I�͠��'V�ɲ�Ȇ0�"��k��1�p�}���R"��>�~�j`ў���Ԍ�U�ϲL�d��Jr�н��zz�3�݋����P��o3���8�A�x�T"��J&���ּ�}�~��N��K�[��K�S"_�q/����� V ΄��������p�����s�QP�AGj������$�[�ΛC��3�3`�?��­ȤU6Tb4�p��8�X�����.�:�|�j�'l ؽv������������C,��}���+�KeF��:i@q�_� M�C�����#0�υ�	
\���!B� �j��v5 v�����6z�)מ��"����~����@Z�f}P��Q�yW�7qE-&A��S FՍ#J��S�н�T�Su��Ю��,���+��¡��bï�2���d�����$��e�����H��Rۚo�N�Ro���AE�O�8MiY��2W�������đ�]�.va�6!5H��R*��vࣶ<��,�y���'9uݙ:�e��?��gN٧��5�uXH�ۣ�F�����O�3��FeF�i��L��6۞-��H�m��T�t�Y%�ȃ�/�ɏ?x�`h ?�t,��%��]� �-���u�����r�9��[����ދ|%��wT�)B�5:���_2�!>4��;�e���S`Xh�Ғ��Y�n�P�A^�:�A!wU��Je�Zτ,��C�+��d�[���5S�J�U�*(��hQ1t�-�Ua��çs&�)��!c�r�3�����# # ��+g%�o�"���f-�O)DL���h���T��!�F�<JL��[�:_��P�zܫ���t��1~]^���w�|�0!�O�Gd_>���`�����O}E�4����=�Z�t��x7#T^=���\�s*sR<À8h`�\����Z�#�u�y�%M���F�����_ߍ$o���r ;t�9�7ް�z9˱��=�[Q�������LKT���Ԥa3!    :���?�w �.�� �I?<��g�    YZ