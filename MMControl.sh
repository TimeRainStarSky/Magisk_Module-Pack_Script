#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$@\"";exit;fi;runtime(){ RUNTIME="/data/adb/TimeRainStarSky/Runtime";export PATH="/data/adb/magisk:$PATH";[ -d "$RUNTIME" ]&&[ -f "$RUNTIME/verify" ]&&[ "$(ls "$RUNTIME")" = "$(cat "$RUNTIME/verify")" ]||{ echo "[1;33m- 正在配置运行环境[m";abort(){ rm -rf "$RUNTIME";echo "[1;31m! $@[m";exit 1;};rm -rf "$RUNTIME";mkdir -p "$RUNTIME";setcmd(){ CMDPATH="$(command -v "$1")"&&cp "$CMDPATH" "$RUNTIME"&&"$RUNTIME/$@"|tr " " "
"|while read i;do [ -z "$i" ]&&continue;ln -sf "$1" "$RUNTIME/$i";done||abort "找不到$1，请安装运行环境后重试";};setcmd busybox --list;setcmd toybox;ls "$RUNTIME">"$RUNTIME/verify";};export PATH="$DIR:$RUNTIME:$PATH";export LD_LIBRARY_PATH="$DIR:$RUNTIME:$LD_LIBRARY_PATH";};DIR="/data/adb/TimeRainStarSky/MMPack";runtime;FILE="$(realpath "$0")";cd "$(dirname "$FILE")";EXEC="$DIR/MMControl.sh.x";abort(){ rm -rf "$EXEC";echo "[1;31m! $@[m";exit 1;};output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "7796e93548f03d9b9fb7c742cbc1e09e" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��M4�] ?�E�h=��ڊ�"���>"*#q��0����`�J#����՜��t��ԺF��zG�U���d�_��攸k@R��w�&o.#o��P�-��kJ���+�ku��)mMۢT��%�����ɗ�!'T���E�U`�9j�m��@��?�ʍ�2��R����|N��o){����&�qM��:�v�f�b��P�&}#f;�S��m�u�\���M:�.���S��֟YY6x�*�9�j-8�o�c�CXc����0��R���uut&� 1��H��Nɚ`GM���[>��!��+�?T�+k�0,x�8�+�q@\
̧�!	᭠FG��2��G��OhWL6;�n������fTkmZ��j��W���C_�A?�u�4��T
͎�|1���?����[�����P�
�VH����<=E{t���b��$7d�&���p٣5�")�rh�Z)����9��Q�E|�$NS�����#m�;_ ou,6A��45mTZp9���d��w��C�Ρ�������Y�dL*8%�P݈�Ffg9�lWL7���d���"�,܃���:����U�rft(���LHS_p"術�S����iŞ��i~�zT��2������y1*`ױO�b��0��ϣ@���%�����V�<�2Hp�m��X۫�?��y�5�覕�F8u���P�o�rڛ����:�jA�_U;e^{�%>� �����bAdǋ�_�r�sm�[?%�śv�rW�+�f9a�9j�Y{@�?��1�_��iFI� ]��a.�.Vi
�i��"��)YI%*M��O��3��QP���t��{�X�����˥<��Bc�ۤ�|���奢������uΖ�	zZ��_^A
��De+����%fvБEK�ɛ͵�����5��`����[���M�}��R4�L�C��)��__VBOG��6��Ƀ3�KH*(���Z>���ú���R##�2�Jާ����$� �1��w��&!Q>�)��~�����V�7&�q��)6M�O5b��-�;IE��!wH������؄)2^�����6X,=�4�%6d�^�<�ݗ�q)|kc�َ��u�JRM��|����4�b�2e9d�I��WG/�~m�Fb��j������*�ߤV�F+n��Y�Q��(є�%荤(�J��l��C��B?�I�
������·����+�!ւԫ����*��]a�G/6�39���s�\��Z�u�uJ>�����z��>��6G��8}�������G��&=�.���@���l����ז�Yo)��&�2��|ݨF�>r�4�p�Ł�;��yS��������E�'�#à��Z��q&?47i�e�zT̓��Y}���b�_�@M�Ut�HFg�щγ��F�w7��Gy�������X1бΧ��tq�#������"��Sd
�x �=����F�u�ʠ ��ἲ
�(���̬V��5�}ž�&̳^8Q�>���^P���>>�qY��~@h8��F����~�����qw&t��Kdɀ`���GI5�^~A<	c'�^�j��ћ�*���J�n��QI.~����#���YY�clj(4a�F�8اf�Y��>u&�-��r5N �'hT:��K=�2Jk^�y� ~����;���쑬��9T�@x�9��Q�.݇M	t5C����fHlUB�8���җ~W^�5���iܡ��\�8��ϴn�h���(Nϒ���U?'�ӭ�vҴ�X/�^��KJ2V7����/;�g=,�`�+����l��"��t����]����r����sdlBle��@w�Yy ����}͆i��=4�k�����H�/O���������Ze�Z�G��^���{׆�I�+lx.�?�4ٮ�����{Tk.R7_����=I�"�%7{Q#<��z�6Uz$W
�MƫF��s|Jۿl��,�f���l$F�η�K�� q�͕6�[?�kyp�J�?��H�������
�LD�����ί4CC���4j�`������dȶrWݍ���ܣh&���?��dߐ�3֝"��ۺ��M����?�y��t% 	[q�,2�@_vj���֛�}yb��s��#:_1^]Uv���S>NU[�y�p4��ͅ�E������\ ��ކ4���ā͚W����@��^��z���/RV8������<�!\�)�sɃYo��	ߏ�j�֠��Oj��O�����F�ӎ�����Ê#O�ЏQ�7j}NV�eۑt�F| ל�:b�U,'j��i���O~R�|��
�r���ĢhW���~wih8Ú���&�]�����n��+�Nc	�ih+�2])g�}<<��Z5��-��L�5v�������<�������0�낂�ُz��W�܀-g��5��*$ �k*�Ŀ�3�ʳ�ý���[<X��U�����YO�b*�.卦 Y{Nnm�����d��M��&mɞ�����$�M���%��d�4�0%lD��k�����o��n�6��Ƈ�\�E^'���fAQE�
7�� ��ϥ��t����l�׾��$��d��#����/��)��0k��O��g��-s
� �m������?��A��@�_M�f�^������~X��"���"�������:޶k��~��꟩���v�t��]Hs׎T��#��v�ٟb��>��J�Ow�k+�>��}�������4
Q�j9�?Ql�+OQ�a픊��e�`�-���o��(�%bc�jG�dJ|����C�z3Ƨ'3فv����u��� ۓ`��|_�V�)�kw�CA9��>�l�jD2 ~Y�iaL����d�d+���6�\�����7PVtq�����	-B��ʨNo�  4 �LIV��XM��B�4��\��h�T��W�[�A�>��p��{	/����`*�:������}"����t���AC&,�u��yf#x��*�����'�5^��"�M]R��~�ȓՎc����n�xGq�X�����K&�.X�kQ���OM�ֽ�F�=�:�"D\��iN�	���' ��{�)CBwN�c���$���6��w��{@��r��i.�sP9@	�S�&���b�FD5�s�e�b�)`��c��w�6���	�3=j)���߆�S��x��������ߡ\���S�硬�u\�B)��J�ㆸ{a�t2��x\Y�䳡�^���G��[�?aC͋^fI��=
�(�~3��v�ȉ���ل�;k.��[\!B:���Z�N�Y��Ziӎ�7I\��PƇ�"�����4%9}�yy�aUFQ2/dXD��اs�#�E�����QR�b�
OL�=o�"�{�ɥ�!�+����i_����-�-aW��.X������r�Ǻ�}y��$I�GN�y�����d�����Z�R�>�����"o��'*���s�q��j'�W*�k^�P`�W���@JB�E^C��+hW�<N@B�J����0ӆ����s��������E�~��{��wO�ț�t����Dm�,3Gt�dxv	N*�l���ho������H��;HPP"pM�A�F�p��N�� �8�u�1���܆� 2C����q�K�ei���΢r�D�K9F�\h�*c��%�o��'�\y�9�F��3�:^/G�\��yf&� �'d��mr��iا�{p����]��X�0a��\�1��TqSx�畑2
7�@������x� j�$A(Dg�b�ԫa��z\��I���_eNdH��c���obj)�Im5�m�ĳ J�\�2�E�s��pöx�"�_	�+^~��)͐\�j���Kco�r�_�_�AO��jN��/
E1�,�3�ł2Ӥo��=ƻ���A�N��ʂT\�x멉+����L l��4�&�s[u�����U��]^4�k�,.�8s6Qj��G�2DF~(�_�F j@>����ϡf�o�7�[���G�T�.S���v�ki>�$��gT�(;�g���%&9j{amx�)*�VM�p�H<;%���˞���l�}�s9V�W��A���!�WP;g�*E�4�D� �3r{���O�o��w����j�G�|�twK���С[%�"�h9v�	�S����sҫ�N�ϩ�Y�����9N��1����+r���i`�^��C}0=1�p�����g\�U�B*��r$*�h���#$r=�|4�`8[�w��QkUjvEQ*��^�)�F)��C`�$��x^�����Q�0�����)k��<�0�y�����iȴ����n��e��g���hC7}��Г���-�������`Ֆ w-���e��=ֳ:|D]n�����  2ML|A�!�T��UG �}[��7#O@����,�5�D!� ���ߪW�a���+�8�Nn��8F������Lm����O�ˮ"��E��ν����s�N��j$NHڬ��[UZ�A�� ���vF\����^Y�T0���Uz��H[�`s�1�-�~��n2;m`1�P(�n�'�<������!�N�R[�E���j��5Ǘ�a3�����ҭ�[2ܜ�(���l�=e���BF�˳���+�;z���=n@U������Q���h���}̊���m7�����3!1�I����H���ի6ݦ3"ᒱ��ߔPZ�M�x&���cݒ�<�����S�C�U}O�e�Ç����t�d��ne��Լ��o.�. .U$0U�Te��S��v�s"�د�}T,8@G�� �z�Z�d#���b����R�p"�����$BezA�|�r��Q2r�.�����,[�	�q�D��ik+� S�n�:%��hwS���8[4C/#J ���q|���	U�m/��`TM��[��m�����q6�hRu ���W���s�2޸=)y����|xN����w �*�����7�u�$iQ$D������vQ� ��)���տ��ש��K:R�|��%���x�H2�����XL�!�V.�l�`����%H��zc�j�"���F?&*�4��t�^֞D��������X���ɕ	/��_�dW�$��O4��,j	O,����U�lڈy d���nf؉|Efn����Wޭ�i��� ���x�N��#%9"�SZK���s�W����0H����Q��四��㏟Te�4��\���k�"���g��H�h�mݦ
�T e���M�������J��l�n?޻mL�&�'� HIU��:�٣���\��ÿ�)�̠��M��x�:��t������sf�7Xѳy�M�h�k��1�˗��雳W���fq�5�fN_	R�R��:�a0y��J�.4���K�1hQ�=�>r��zT=8z2�HCm��oS�}tO��Y1�X�:fN�x��al�|���Cr�ژ�耰��bU~�/��ʵ����C�6�p�Jx�75�	9��߳�u�R��˙���.�(�o`�5aA��B��̂b6���'��s%��W��¥?v�n����"���Rr�Gf�&��]qM�3V�xj�g)A�J(]�-�G]�"CpD�u�Y�T�y�'���g,�� kq��y�sR�)r/g8�4�L��﬎�h;�#���>0�4A�M��`[K7��u���	G��jk_*p�i�a�^ڸ�P���Y8����ʦ�������~��e|2k��N~��A�P��'�����p�����u&t�JEضq�3�<3�L�9I�՗s�޹�FR��*�KF)��8%3��:�w�h��z�:��%{\���%
7������]�u���k��b�}�H$���Gmz����;�5gJ�Z�:Xݩ[�}GV�}�.��A=�G:��/�Lc�z�0g��@~$�	������>�0U3�<��`��ֹk��8x�x��e��jbz�g�r����j���C �Ӱ��z<&�7]����&=6H
�w�QU���G�����a�\E�����'��x��� b���t�������7����k�ݍ�ɘ: �uD�KC,���-��4�p�R��C|I�]A����)��F��wD\4E::=��-L�?�ml{���tM�>�Btr(�3�L;�ܱȤQ��n��F�OX���ڱ+U�o�+)�({k1�:%A?�e>	-t�����b�nM$��-!FoXV�"���)h�Ƨ�r�,d�}"yb_Jޭ�t�f��߃������?���h�ζ��QZ�/��t�xV[@[��&+[��ɸs
�NB��h�f6Ɯ/��*�̵nŨ��u��t	o�*r�P���ňE�$m�� �^4MH�	�	����n�$s5T6�z�S�*u��9���C���%j�A�4�f��������`��>�R=��G�b>�u)��Ї�W��LhO �&wYՆv�>�%��>"4�z���ݱ1����W����8p)Ox�>O��xD'#+4dc��m��^MnǊ�ٶ�]�h`�vt,��~���� u�����^CVVu�|�Q1V�QR�k�n�_�'�%\�v�e3Q���&�%�j���^D�B�_�/��S�nM�������[�W!{UQ,�����]&�v��ۑ`_��A�M%~O�X�<Qeu�g�\�����j�E��`"�&��!��<��䰉�~�6}��O���(ݍr���3f�_P�N�b�*��C�>R ��[�j��%E<X!RQ�tm�,m��K4T0Sߵ�cW�$������:'bd^{�z�D��r��> ZAo�?XV%;[��?3�N���]��˵�ceo[�gAHw���Q���L��C�O���
7T��v��X�������/�K0�H�hhL%6�G���j�*�Ҍݾ�5�[����S{�u5���h��ؠA͝��Kc�&�*M�8l8�WQ!�x�Γʋ̃�9��f�Iɂ�"u[a#3���C��?���Zp�u͝�������t_�3�@?V������p���[5�á%����&���F��Pۓ]�\Q����X���1����j����D�	s|�:m�H��<?�"����|2��FV�'�a�{��[آ�݋���Y�r�l��Uj�'��gZ[������ʥa*Q����R"���������+*j�ۓ����"i�6s4���5K8�p�Z�7��+�@X"�,��}�:Kլ"��x.hw�̾���w�[�%��xǳ�Q��4�|n��d��f��f���D��jY_I�<����&�

�䟱Χ��N�B@ŉs-�-u����V������7�PdŹg�l�M�XjB����۪e֤��{����1����KN���!�:\�=��i�?{2j#T.�cf���cf#I�Tuc��EO4!q���0{�˱e��������ŧT%��.���j�^=Ĵ�����q�}Hr%��D����~,%�M�얋�������p���4�Ny�9G��on������  ���]���T�A��2%2�k�(�e�����!Z	HX��©�̱ʆ�R-C��f�lR��##�#���� Ɖ��(|a \�m�sSth��}6	S�}��tԵe�d�QfF!�z����^��:X_����`��Ɏx��!,�=ib��h��=�ZY�6ͨ��Tn=D気얈��D�u����7$��%�Kզ��Z�h3�u��ѡ:X;�2݅~)��u�� Uk��AO�&�����J+{�
8���`V��U<+�ٷ�U�(陵�O��g���y����`�Φq�	p-�.���ʫ�&��,8P�`I��\d���Y���tXПj���|���Jw�s��UMƮ��P˵ja<s
�EX�"���A����ͷx����k�{p��-*���F�>;�x�#֖�!���I�2���-{D�s��4{Xu������D�����b�=A�	����=C���ť��:�qjG�˺,���zO��0"}xT�S�+<U���µ�[rr��;�B�@f������]e�r���L3WzA��.���td��5~p����F)X�̫3�����*9�65Z�Xj���Ai3��y�Ƀ����-U��3���]�𑸼&]fO�Ԟ��'J�Ia�k��C?	�7a"4�|-��B^��������qTħ��)ޮ���3�?U�J��X���r[	8T��Ӻ����د�Z稂R�\˯J�P)����H:�:Q@m]T�P�U�a_�ַR�VP��E�n���_ZmC��tD&b$z���t!;/G������م��rDf`��q��C.^k�ʑs�8��ҽX�X7�����݉XO�1��1�I[�:s���u���=�p��u:��Tx���/JL@*��}�,�[�@�@X�?��iH��������׮��T��S|X�Q��d���0PZd�M*Ñ5��BA
��Dޏ�{i�q'�J���is���{ۑ]V~Sctg�9���h�)�:�:���^�7	GM�iҐ��gy4|�c��j7QȾ�mlgtE�q���qS.��P�'e��NPFZ��mB�?n�u���{�f�S��DH��[�����R��;ijQ�n�>�d�0|׮3�5����b��T�V� �%s�N�Tj�#_ԍ����d��Q\�_��K&_>�#q[�8P)����.�\�wŽ��L�@��t\_��4c���I��*�k1�L���s�k`=C@��ŤsN'��p�. ڍ �}�/�b {r$���`SۨVfu�9O<��i����[��Ñ�9�;W�:ylTvR/���Mlk��	I�M�c�?��v��mM�k�`D)��vSHv�J�}�6���R9=����H-<�jxA]�Lv�j��Ǉ�σ*����;*:b�?y�@�����P
�A�	nǇ���]�T����k����}��Z��>�]�o�8��&^Е?�����p��h��Hc{LEEw���P�^� �d���~�vg�>3M��L��y��	��z/��Y��dn�D�h�zQ:���\K�����p�5��v���ߋ��q�*E,Oʁb\���h�XE�xi�l�j�r��}dhBq�1g~u�uFk���o�3��>���S̍>�����P����Zz�dz*2��|��h���%��ձ�*����!=�� �Zvd����ƕ
~?�@���^��,:I9=w��	�8�T�2�-�����!��z!͹p�S���%O�k�Y5>'EIS�����ʞvo�ٰ���%��������*2o�;&8��ʥ�*v�)�Zt�R��(�ƛ�(n�;"5�a��V���@��&�G5��6�KaHVwo��虠@�/�e<�?n;�$Pڍp��?%�����/����{�|�$9GE�C����ȃ�!�3}h�������kF�PӲVNop,YBH��Y��]���|;���ߎ��9nW5&xE���c`�-Z��]F�_d�������W�rs��a�B��ӥQ����C�	��\�4t)��g3�@T�~.��+�_�J��'�<<Q�;���[b+����?�$�ڇ��Ȏ2N��J0�gy��E��2�[0'+w\�d��b�/��ؾ��l滧U� ,�o�ܳQl�Qg3tJ��9�<���k�uxPoU˜"*��{�n��<���6�/�=jU<��
m�ۯ9w��&���i8Eg����Ǫ�@�o���&�ʈ'��+�x�A�����Qp6�?.�}ft���|�������E2�q�я�V�N�zYO��X��4)���=��,��߆�d2��W�YB�TD��L�6�-���-���6�J,���d�ved5@N��)�f���L�&sb2�:@[�^hp���9�xbv0�S�@:�ܓD�ɴ�Z�9���ԭ!.���V ~0����t�d^~aa�����c��V4y{	�q@��ϡB��M����ΕL�aMH���S�]9t�r�)]��G�;�R�C�P�g ��#��:x���	緅��\]��&SHH�1���G ���1>��n�g_����#�1�>��34�<��`B��n�H����RZ�h�H�/�}w�: �$aIԗ�7����"�4}�l�ø�B�����hOU9TWG�ԣ]r�cU"�l���d65���͗�B���������i
�/��b�Z�˒��2�-����J\��?�CS�A/5Nʎ_4����ά��U#§gp�m��'����z|��0��B~���Q=�[1���d#�x�������}z�N�S�Y��8�Z[�*�ϥ�~v�a�0��q�����Ǯ�~ +R��1�hрu��D՚�xĳ*6��WL=�Y3'��m�E����y��n��㩫ӭ� f�9�T���;=g���	��`�*�2���u^
[��d�4J�?���N_���e*�}�]4���9��"͏�붏:�� 1n�P���B>,�A�g�'d��b�)��2 _.�����{x����8n�7�4��C{�kń'�!�ѯ�d�����ݢH�\ ~��KvE2)�;JA����tۯȬׂ�=� v_�0�Ibd���rqI�����RS����`76+�� ��\�@aU�݉������Җ-�iP,Q�	3X�<��&o��S��J�/"��S�ԓ`�F�`���Nߙ ���w����� `d���LHns�ZA8�4�f�P�ޤm�yu�E�p���Y+��	�3��NR�X��3�m������EŹ��B�������8�;b���d�[�.	8v��d�ÎJd?j�~��rO���!���
��<j�L�!d��B�jx�!��/�����$qy�*zQ�
yWH����M�$��<�K�T�IK�ۂ�Y���l���V��ۂ)�cB��?�s�v��h�""�=o����a���Pۻ�'ު\st�-��7�ti�~�3\�� ���/�ȟ���k�y���C���W�����M^�DRYZ�&ӄE�Lq�ѵi2͡@`�f�����'�,V�J��b���X�CB�P�C�Z� ,��1jeهΏ$u3�>�=��j���R�J�:(��m@R��XP��7�f�v�f�S��J�W�g�/dn�U9�B����,|T๎	�0o���� ��%G�C��,�@q��jʀ��:�(}������d�x�E3�o��}pF��V�bk��%�P)����,����z�6!]���sR�C�"�j9�H;It�$�������3�Z9KI��|�-5�-�����:wr0���ߞ��80`Ti՟�pCJY:�h���	�"�%��.Y��*�$�i%�_A���?���]�&Ai+Ӆ��Sw85-e�� �,�YDW������Z���WK��S� �h�S=��,V�w�qڰ�Bx���0w�gA���A��oы,D�(�SVƓ��P�� �ۛC�'�v�:S5kZ&s��g֫Jq�u�)-�kʘ�q�H�I���� z�t-(%X���T��أ[�a��G4~��wk�*�4RNḔEq�"���ߌGQ9Ɵ��T�2Ey�{f&���$��m'ܷ�$�z�ez@��U7���҅�!��Mŋ%Ѵ:g�*L���Y&���Y�qLm����t�;�b<���z�..�KX�>��F�
�H+�'�]��dV��<��1���!���0�� �IɤI=�TdL�TR��=ʵ��AZ�Ȭʇs�¡�+>\TXҝ!񱚸�+��gu9������|��¢��*��b�څ����� �i�+\���ޓh���-�>�gS�>L&���թ'�yZ�9��������P������+2c7vO�g��T/R�E��I| ���Cg��ԕ��2�v�W-`�.+���깧���I�����Ж��E�_&�ڪP*7�xl��"PQ-.nǫ�dK��&�i�$˞1x@��&Z�3�3}0���c���n�dv��^N;-`��s�Y>�2���ѳ�?��T��S/���ͤR�ɏp}��j�W����
�o���Yj��$Ԕ������8ع�3�'��(#ݔ�ɶ������W��c��-Ri�Ĕ�b��t#�����я<���X��[�-��,8y}��k��9�$d=c���� �#��GcO7�q�$��1~A�`�?����E�ף7C���y�G�	��t^p�24sC��pY�X�Hg��^�*Z� �5E��anD����C6n_��󄷠X�8�t�B���ub��	�s8t���bKZ��d����c���m�����7�P��֛A���.��%?ڪ��v�b�h���s	��� !w4駷-�P��磌H@�enC}���b��tT�7g]柟Ց�����_i�/��^�C�k\���F�5��ʼ�*�K<?qt�BK-9�jX(�LOnBb&���"�*��+���k�E�������fWD�+ P�
�%�2�H4��R��,M���*V�2��ir��T��G��\�>פ�j��h�����4i/�}jtO�!�~�r����@��)�*y_.���
������b�E��u�
�z���Glo�]��g�0@�3\,�����-#ƅV���*�\\n����l�KϬ�`�jf�|�� V�+�x9ZTڃ��:�
[VX)��}
��(0�Ǣh0��>�-VR��1,h������#�!P���(� �E8�>��������=��j͈���X#�?3���[^Љ��%��
9=��P���k�������?���P�i����{�vq[�%g��� ���L�iU;��x���>H�[�?�%vjD)��݅�� �}���ZY{\������1n���Pɞ6�#�y��qA<��ud�	߼�y�IG�9�6���d'����kk����Qr{�(X���+��a����h������o�.=W}�G$JA�Z�g���cO.���	�2�k>�Xg��K��洛5E��/������?��J���3�v�-�+쥱��v$>�^�u/S)A׊ꭅ0�������O����Y��ByZ���'�8�s�
�7�]�?D�
��=��i�wk��Sƈ�g����{0��␰�(���J��t}Q�Ȳ���c ^���B�6rr2U�|
���ٴ��b)sB^�b��i�mNw��@����[oR=�����f��d�$ܹ��bg�����Y��H�4q�ԟ`�������͘�J\؟�G��dM��V���ڷ'�{%οG�K����u@֊vW�t�/4�>���H�O��*
s�h��p�ꁓ{fw�MHj&`�L�Zq�EО��Q��$�q&΢��XÅ�+�L�����e����)��-���Ԍ-)�Qݷ�!�,���[��[�Շ[i?�cXd�W�!ؿ�O&>>./О1N�H�m�x1oo ���u���]��V?  ��D ��� �j�� k���g�    YZ