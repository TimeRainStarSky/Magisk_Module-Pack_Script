#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMControl.sh.x";abort(){ echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(base64 -d<<<"5a6a5L2N56ym")/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "97a3d05d5fe045d8276810a964374fb1" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��LG4�] ?�E�h=��ڊ�"����F�7w�-���c��x]S7#Q̐K�q,����)�T���_uuW���݌(���7�?qd����kp��S�2�EsC�KD��o�h�PK9.�[-{��Ǵ{�w�����*<�?S�`}�
��rN�3ZH��/{��5����a�)�S֎g�_l/� �ሹ�=X��8�4���(e�T�����/D����9��j�B.)�=et�L����O�_�
V��@@�ud3���!7/��o��R
ǽe!D�ik5��$2�Z�\��vz3�k^��N߉h�h�G"H�q�i�.���E���x5'l��c���zrJa��xf⊎��|U䲑8Z����AW��ױ�44h�!O��Y��I�w4j
ȓ�ӛ_jX� ���Y�v	<�e�Y�YF|9-�^�������q��=m���m��l,{d��_
?J�MO�Sl�����>�"���`_�K
8G̗�����*�������j7B=�F�sy�z�	����M��Dj��02L�It)�����'�.ds���zb#0�����l��I7�����=Un略�G�,֧׻�rA�DU.��|�.���a�� ;&G�%YÅI�V/�j6�u�O}T8c�5�O��6E+^Fߩ�s�П<+�&i_k �Di��~���: ;��QH�E�d2�{�OV6)/*xB�PZ�@`�(�}��MG�G�����@����cЕ���FCө@���|8��X)�j���pfF׾ԬJX���m�mwWY{"�M��t,��=g��XY!%V@�<�#��$~1X���>��l�6t樨�_�Q}v��Q�M�~���8f�Xky�0v�	�ޜ�����u�.$����{������K۽w�r�LYJ��k���h�>�B�ไ%�y�ԏ�2��X���W:���ssC5 ��!~�0�<g��V���~\9E�f��3�����=��fA���
\��5��:�J��8
�'[�Ќǹ�=�tG��^���7?��}�>�'V������h�	�ck<T��|P � ��R�~������3�"ju�������'k�.��̯��h�`�����Ǘ�)�n�T�U�M9lH���@[��v�Vx+����a�$e]����A�+0qJ��пM9�-�G�˚Ia�f�P�a����wҝ�w�bjb2��B�ɩ�:<X�z>��Z���"��F;L��?����]���'�R�X�)�C�E���9�7&�4{l
H_�~M(��bk;�b����<��e��l[w�0<��p�%'oJ4,0aS�J����ؖg�B$���F$���r(���y�Ag�e;S����;�[�����<SbX�N�.���\�DC-�A�d&v��
W`4����w����E\���Sg�R @�f��T��f������Zw=x�גfҷ��4�� ��r�;Ķ<h�(��Y �V�9[��+���W���k�=� �;�wf�:�;C�о˦��ʮ|��[GJ���~��%0Ds��Z�q!Z�iS5�\/z���{��;;
�aEF7��M�_1}~A�u����LV3��������yC��w����h^�)4\�"������!� �n9C�<��%�Kq~t�����ۗ4h�f�����-�h$c��]�,�'b�/��OBp+S ٔ]��f�`bJc��ci����9=�dg�XN&@6#�b+������-������7&�O�)
(f���}�`�I��;Di�B�\5v�gTwE%�������ށc��{�O��,��L�!����e5���m������^���&(0��M�����1�?�l���;68�q�PS���������$��	oIʦe���zjގo����%~[����-�^�+�-G�"e��j-����O8��_�}H���Œ��,���}�������ڍ�9a�7�~�p!�q)M��[�!���(�3O�3	/ƻix������uT�lӌJI�7}F�2�澃��oH�m`r~ �x"O��4����,���?M��0�l?��bSШ����!��;�6Pbb�.�6̴|M�+wg���^�]�И*G��,U�%��ŞT�>�$���0�i��T��i�N�G�!�!��G�n2տ7��	��p���2�_�?����V?I
��(���\�C �ۡ8�ഥ����8�1ݕ?���?�u5�O%����q;b����3�u/��;Sg�F���)�ͨ��a-�6Z���>
���������2�t�¸�.��X��I�xi���U�-H���)/���'�n�1���!�Dч}���xҥ�rMg���_��F���`�YMj�ޑ�SH�tٟY��EV��i��>ʩ�J�W�R<�]�h��!-���YW}��}̤�y{af`��`����`W���c�xޒc.��T���ѱ+%���r��s=5�TZL���~ͯ��$6b?Z@w�3J��S��/� $v�@��r�s�2<���/��f,b���"�sSpK�ԣ�9�E#�X�7�&W�V`O�:%3�	�.�p��8qjFQg�
��b��N�޸�r�� ��=B��D�k����1;{���JT#I��D:TR�Tp�3õ������c�+�@d��q�������f�;3sg��������J�J�ɇ�)<���l`�+6)m�r�M�t�0�R�sk��ҁ�I# �n����`w��Z̄�SL-2�5G�Ȫ����ǐS����;&!g;�����}�Ut�+ff�P�`���������m,�#���0�y�{�&��z͵$6��wc��U��ß���%�-�^�rCdӻ^K����u�zIN���o�us�xk��1�9{�Eo�:�:x1�����tE���k<��E���b�4��{�-P��������PB%������#�?���K?�p_��O�$9�9�����if���/[�#(��S�ʙ��/@���<�'�F��(\l�%�'gL��$J�,�m7�)؈�Fiǝ��������.���I�1�U�S�0�K}#/�~��q}�lQ�����$�ē�e��D��|.�,6dw=���|�K� NO"v���@��Ȱ��!�X�7b�Z��������.��+�N~%�;!h��$�Y�м憗E"�`9��	�,�����Z�n���i7'o�*�@˦����-�;��Q�K�-��lZ�9jCB�j�<Y���W�n�����8$�oh�"p��3�L����� Izq�^M�T�"��p9OQ4�S'f��M@h�M��d���]�����Mv	��ֶ6�VU!��]%�X�D����lf��%{D �E��l�_�[џ%�!Z3{69�E^�0F�)kN���ۛ���7�{�P+66�%��3�o�)T����@II�K�օ����j�t;����M+��h+�� Mˌ��X��.t�R��F縀�a� ?�,�[}&���x}e4�gs�ʡ9�B��S;,��7_�E������1���O�+r�o� �\a�Ժ�遤(����谅�F�0r1��o�p�t��A������jV�O�w��;�́\����Gp��^�~�qo VCQ?+�%b��:�'��� ���l�\N� ;��P���
/�\Y�hأ�_�`�g!�6J$SǓT{R`T�1�$��j����P��K�o��`���FI0����9�����z�k��BT�?��UQ�ǥ6��Q��y`�W���l���ĈG����z�$���KK�nkG|ׇ(���(��΢r�}���\�E�2�\���]�1���j�T�-
��u���(DF}�/(2�,��F���� �5c��XP	Q�HK�18r_���B��$	�v�	ѫr>�_�L�c�"̚=��_$�r��5�a�e���9����}����B1������ÛYq��|��/���'�
K߶�w���̟!��l-�*��(�r"�蠐2f���`�	U��@�n-��&��Tg������[��T���Ƽ���i5�:�5��(�:�D�vƊ� �)ӳ�������aI'(��f������x���+�o���~�-Ơb�kH��ZP���«2SN6$Q'DU�@vu�/-ge��hl�c�`����A50����Yʏ����eH���wY�Mϩh��q�=�[�����S�b�U��	�u}ySτs��p�rec]��k���	$)�>�+�Q%ٴ�������FJ�w�I�P?�=��>[stIK�i�N�~T�'i���rMx�~(�K#�oy?<kQ����r�HZq&ܝ�����֎^��������ZcP>� {3!��DE4V]V�6/��)��[����aGnG���c������0c�Q=�O��t)^J�	(<\�J�_�-𖌬�ߪ�!�>�����ZT��	�������xur�w
 �ҧq�|�[���|�3�:pNal��������V8�KL������ ����Ւ��MS�_�F�H���E�}�ԭ�޳��u_0to)�{]h"Y���;�X"��l�	A_��KS�h���j�t���J�o��Eg&UVy1��!��Q�0Q$c�t[�E����6�'�5qO���PhD=��̣ ��h���Z�92�4X6�L���V[�1=�vY	3U�qwے$3�E�¶�-����Hо�1}\��v���(�݅��TsӘ���20#l�G�U�:�Œ����4��"����Į�����w|jR8I��랛z��#׶�\>�ȸ-�`���:V��m+���-�e�k����i�Ox�r����H���⳱gB�b���x�}[Uua<hJ6F�yD�'�ˣ�C<\�y�	�+bӂ�ߝ�L�I�`}Xt�kN�]��Ŕn�*�'��(�	�d�2�۩&�6 �2N='���A�Gjr$�̖�8��ٗ�;p�d�4������1�ߧc�JQ�l�A���D�#����.�U�l7����8�X���Izej�-������q��؆��4Kź�^8y<�z�(FU�g�F���u�O#(��l62%3c���U����x�:���"��^���v�wܕ�zm|���/���Z���8Q����Y�E�r���:�����r+�������=O������A�抬�wƲb���U��!�C�wA6F�{��QڴP�a|V'"����Lڈ����u�x�ѹ�\�ȳ5����@x�e�*���zy�ơ�<���
.OiS�y�u���Ƭ���l{�7֡�v�ۺ ʷ�Žm&�_M��[�V�Ot�
��?����1D����|1��P���:��/��.w��+��3�p曈Ʌ_ ��=�^*D��,H�������1�%�Bl�����܈Sp�yYe�X�QF�S�� I1��U�r�"V�#rmSn�x�6�Iv~/Qv�9�r��Ғ����vF2�MË�HHu�^]�#��Um�!��ݹ��콄����0ڝ����)���Q�G�}�'?��D���s\�i�u�f��ݘq��Al=k!�0�<I�5�s�T-i�m�@QA�f�U����f^e���yV����q�.���@ZTCD��0�3���~kҋ���L�M�B)d7�� 8�;�7 ���{�jPA�}�VX~���p�7Z��/ֶ�i�xǑ��r�7@n���uԢ�p�v*fWBv7�"(�������Rp���נ�"�i��c8oi�Þ�b�m����?jĉ��S����Q]��w�)�����U�Mx-�`P$����b��\��g��jΰ�9h-���ݤ�Eڮ��7�%%&�!ߩ�&�<q�{��'ē: =Cx4�1neYe��X܈�FEd}Je�?8~́H���؊4YX�&�^�k������Dy��q��({>���TA+7uu
�I|,��ׅ�`�&M�N��sU"X;��_n=��p��`c�б^>2������#�	�)��}���m*5����/�m�WX�G�1��H�el�[BP-%{��H�y9��Ͷ�_\�~���s��2�-�^�iǝC��C=Mӛ2��$��O\��8k5��8��h'x��e1,��x�az�M>q� �E�������a,�ge�Cy#�hߩf�"jF��ں���L��`��Я�Ez�h�*7�O�5I�l?O�+���	b�"L+t=Μ2ͫ�Kd�l�ov�:�Ԍ�q@-�h���f����r������ĳ�K���{�9m�@��3n�<m�M@�inA�r��<9ҏ�χG����	�ɦ����3�<��f����x�,t�uu��e��b\'�)%��d9�31���n0�k�l���ю_��u���O��s��6Vld�N�.��!�2P
��:�i�E���:�K���g�|����k�����������5���$.S�6D7�n
�ϼ�*jH;Ԣ@+����4�r�4��2~�1��P"{&1��� ��'��S$2�/̇���x���:=w��Qhd�/��~ϡ$D�R[������AE�$	v`=�(0N�S:��]`\I��jqi�o�k����,y/\f�3\�=g<�.�]~�me�0��u<����#R�k~�l>�l9�	��`�y�$I����1?����Vn���o��e6��aC;�8Yg����,ui�~�m/θ��8N��)�#gP���^��)ҋ�x�2.�p���8����<�[=�x�e�I�wv�q1�H�;�#&cl)JZM  mL1O�����=��"��B��ڧ�������gy]q�Jv,A�u�o���n5çV�F��0H��Nx(í~��~˴~	��xʲ9�F�:s�.c��yз�F$A��� }8̪Me(o������f���/��k�u��ˇ�z���d��.s �Q��Δ{��?�cP��<p�����ou����ۀ�l�d�۹��1S�Wl��3(*�/sm1�紆�H������ܸ0bWe���,%��q�bv�ߕ
���/ #��?JY֔��I`C!c�ԍC?��RqG�D;�_��J�� 
�:���}|'����t��3�hs�%6��2��r9��I��ou�Θ;�l��J�S���@zC&�	��f�5����3��Q�V�蔓ɂN�AE"/_�[��.D?	�ك|��S��!T���p���C	Q�ʨ�^P<���d�^t(��������5 y�*[l��C�J)*�Y�����nINoaq]��)�>J{�l�ד�\��P?�u�N^M�9��k:g���L�<Ic�a [�
f����#��T��S	�z��#�)�9���AA��~������=�5P��V�5P�Wa+es�z�y2xkC�`�z{�`�;;���!_SG ���Ѽ���u{����^f�w���*4>;��\0`.+]�/,�q=݋�'��S�I	����R�;�(P�g�ۦ��{�Iz��Ӻ�A,4�����:���9�td��LA�8Ԋ�cw�v�f��2��3^����`]뀴:?����|���* ߈�ޯa7H��<�R��ٙ�ܖ(�~)���h���G��#^懶!���#�t)7<�����V�}��Ocp�\��������A�p~&��}ѥ�Vy1@#���b��l��\"�cS �K(s9Zݡ-qy��>�W_�t�W�������މ|�T�y�*Z�6��2k«D�+g�m4�����Ow�jv��*s��m�%g3Z�����>�W	H��3IT�PӢR�?R�-2�y�l�ٺ��K" !&�mK��8O?&�Nn٣�<��Q{ne��b�WrH	�z�Vw� ��nsk��]��K*-��;����1���2�cO�J�wy��~a�r�~ҭ���O"��N��n\)���2/b���'�֣*D���˽q�+���w����J$�'�}�O�0��D�#����k�'�Ȕ���TO�����uT��w�DmvN�l�Fw��ٵM�+v���%w��:(���W�����Ge��ΚtI��]���#2	N�����
�[98(hd��ۤ��5� �r%����9y�}��x]�
wh�!��9�js�#[ꥬ8>���C�|���j�����O�~T�F}��~�,�1�V@[q[�G?�j�ǉ@��F���f�D��h%��B�.&�p2߂�u�ק�&���:�B�+j�@p^�-z��`Y5���+��q� 4,��cp�h��n5h�y�_k"[=�DP�g=�latK�ߚ�U⇑���B�U�SDp����`񀋵Uݗb)e��3�z[q��}Q=<3@�V�/����:xRZ'~�:�?"�s�i��3��z�[�HJ&�V&�2K{_]�-�f �5Ȕ�ڑ;oJ!��(ߔyp��-�\�������=5Y�qϣsܕ��*����m[�p���6���u��-!(q}�3��1��ۺ|����%�y7��E�W�vl�f���^ �HhR��a���G
��m\Sw��GV�{?�:�&M�Iu� �
D���1�D}{��?�yf[݀U�����*�f�	`fH$���/�%f_ s�����
*@�(�>�@Lѭ��w;��/@ΐ8��-9$�D,�1��BW�V�������c����κȷW�jޒ��Y��ˆwYۇ�&�]��m��O�H�cq2�
Ne��"����ٖ>����f@�c8A��ݚ���R�5�R��>+ڬ�$AǗ���fUH���4[������q��A�S��q��S��S�͜9S%x�Y���G`��x@h��+5>�����ױ X$Bڥs��11�L"ƸS�zX!�6#hs�כtn�ȴ�S�P�"�G��%2l�R��"鮧�Bz���Ŝ̐��\�1�t����@�}��81b�j���h�<�s�ҵ�x9�(��D�S�x�.g����2��H��[��o�	�+�1�eLZz�
��C�{0�./*kp�/�K*p?~c��M�&'���(%Zy����v�C�ާo�N��͍G+Q�Ƃ�[ I�d��	��^�k(䧗��	��DKk�k�-���V0�k�c4���[8���r�x�P���b�o���^x��-���I�;�r��j����Q��[V�?�v�hQiv��N��ׄ]r�.�?q�
a�6���^8\��hI��+V����9���q߁�#e�����)�h]'$��84����,�X���W}0U�T��[��q�6�ځB�`�/��L��C���wv le�篫��6'�����d����/H����jC�k�	[]/|!�z��zC���9ar�u�'�_ڪ#�-�Ћ�Hg���]!xoI+�����k��[l=��Ε�����g���;�GTd�陡�7��5��k�;O�׸�OҐo �����s!���Y�dw��D����w=ݾ��3S����@N����z@_M"����8G�&9���3	�qW�k,�E'c��k�����50+{���'����rh�� ���*(���oL��_dǐQ��BH���P��1|�,��:��c��r/�Z;�J������i.0�Ȇ]K��D�9�O�,�w|��V~p�$�d���<�?dH�7����Ydhq}���5�2���gOݑ���ɻ�P�Ku^��G|�5���W��1��F�Z��1��� �ɡE,QS�eZaL9�*m�yg�<���N�!p5�A���B��tc����?�}^���;�! U3��9����29d�B�v��s��"W�����,�E��Rp�q��r4��vc�߼z㢔q��z	�Ʋ,�?���:��w�-J�'<�����b9��HmaMG��+c�h����ҋ�tP��1��@BY>���O��1���[6����7�jD�M����oc.�V���x��Y3s{�)u�Tчgݚ�H�'$����M�\��|�@�D�-�����r4��P����#R�&$�m��\�.��� 1�U4�F�/H!!�Ը�k��&D@&$�T�@���V��t��j�Յ&�e��Piǒ�-�6��16w���Q�5��_+����U�)<L�4�k���}:9��K'�W=��Q$F�����ߢg���l(B�A
s���	kk��ʒ�x���F���Ecf��A���Xۗ�mDa�!;�G��l��z�szL.<(G�I�u��;5���U՞.��n����8���z_*�n��(֨G�.����Ș �)+�V�I�z_]R�@����!]5�Z:)%Z�av�� }��E&|�ݰi\$��Sƭ ��\�*�  ����h��ޯ��a�7)�}良���
�ʏ:S�I"M����bqz
Fq;��=)�9VՁ�m\��?N�V�"�7�\� �SR�q䜪��y훇:5b�n�B�B� �>n�A��F�,����Lƒ`n���-��$����	�~�`�ܳqJ�FU���7�;"��}3G!S�#��EɌMpI����;������y��	B��*�r�H+s��hR~/x	�:�{Ĕh!����=�.J����ȅ	x#$�H��!8+�!k�~�[~��#�wN�+�p��.OV�H�˥c9�Z:{R{�Q����{�!�b�E/<�i�ه��+�� �T��|��H����<B"������w�9����w�|)���>ȅ#�3c�o�	�'E	���r�[m�"���P�L��{c:[h�V��N�e� ���*x�9��ǴS��V����y�6�"V��$ϊ���OH/n�v>S&������U�]�]�P4�Ä�4�]6�8�b �5�c�@~	�JdƋ�ɌZ�%*��}%ȝ�a�;�	�&�_���Z�٠�W�7N�Ȋ:KC�*_�VΩ��G��������n�� ��_�U)"��a�DG���&��ܵDNؘ%ޠ�=�`o8��j�P�����F��.�J��0]J=֖ۤ'����Vk;	�d*��\���y�P��)�����&�(у�kD�*��Y��(��R��rQ8�9��.pS6���>�H��#}��%a��q����#�V�BP�wY|6��&$���q�4��VR.A=�%L(�w�B3TSB����L��v��I��,y*���j8�/���j��@a��^�(�KF�ZR��Y{��*�����W&ȉD���$�Q�R$0�P��<j]�r����%��k`�x�L��n�t�9� �	}H�_�ݒ��5FJW�$���v�5��ʭ	Zq�<��Օ`tѝ��.B��f��S�
��z���o$N�q��Y�
]� ������Ƭq~���8��HNi'�.������걙\9)ir�%���������� �$�Pg�WĆ����,fBJ�\�V'�~$��������x9wh�ɾÙh��i�px��{�p�.���&�N�!�#�f|
g%\��.���^���]��L�iZ�%�?zD���!&�9��\Hd�~F�4,�"��8Y��Gސ߳�\1����s�b5efUUcȧ��Ԁ���7�����{ڐ��f��b+�hįX����%i��}�����;��+�l�	U�3�
a�J>y2�,?x*S|/g2���K�L\&��L� �����a�@�`�r�	M;�b΅�1l�A�91��}�06�wH���q�������5{��W��df{�(	/VB�%���lk�+ڂ�ZغX�C��8��/��v����»�kl&vҲ�x�T�kL�[�䡮I�~Ij�����d����?YKic�Gxx�$�@$���3�PJ���Y�����L�����#��C3xL���c�( �$;&�C!a��H��i.�l����y�I|�$X�^�d����e@~��@_IP�s�&�s:4w��$Łr������e���L �O0�B��#�?dl{�x�(�k.G'Y���'m�7_�lwa�zxO/9�
~B�1���9E�!e%��{&�N��~��Wc�8WK��0/g��DsrP��b|�'���#4Xs�_��Y�Ǚ %�3�q|ڃ|B��B"�~�>��/u9T=m�I�5E�Q4Y7����A^�N�y���;���Ӥn��/T�_�1A��QYm���@C̖�h�I�)��x�O�u�s��!t��+#�xs� 0�)��H'���"5��f�j�[rkR��>D 7k�����!l�W??��C�J<�hg��O���5Nac��+�&� !��v�"���Yߺ<7S���lk��w��M�-a4=|={F��y���b3̆�����$�k��C�E�a�d�ض"Ǵ��x~����h��2��X��fGm�w�q!]�1l2�?q���J��I�I [{WR �Z���wn�����Zg�rb2��d�s0�s�Z�~���� �ݛ�l����̩��N�W��i�����Mf��y&Q����Ɣ'�=�(�7V��[���"�� ?<Zs�3,	�rP�1��o�lj�2���l������,�D���B/*��]YH��� k҂xJ��V����)�/�o2�E�Z�.��t�	�(��1��;x���h�Iݳ)�w����@�}�Y�1�_m�X�q�-V�֎�˲	�ʃ�*ڎm���^���>ɯc�c��3k#��B ����@Vk�b�H~��E[�"$)����C�)h:�;|S��\��{7���������.��>A����;��Z��{O�u�cM��0\چ������������s��EU�Yث�s��I[��rk)}A�7а��ח��VЩ�%W�36U��u�z=�R��a�[U������e�Vamt>��#�-�Ь�!Z���o��Mw��tua=�m�TU�k[׎(�C�qF����{R�͍qj`K-���U��E���������*�=@��"��p����N?�L1��m��J��D7?��tZx|ϊ�?��
+9����x�(O�]#U$� uH�`���z[<X�v�t���h��rG�s�jmo���ڲ<=(��=+�%�(5����Q5�R<�
��W *��N���0$a���?�}�t|`�D'H"a�n?ۊ�\}�B���0
�E5�тT,qBA:Ω��io^�%+A!��3J�.��{Y[m{��m�s������c�⮸��!b�� @h���G�wr�G��Z�:��e��>H��#��r���tLR��t֛���o8���2�D�J�w03��w%0��uӂX1Wc�'�g�G1cz"�4�l�@b��K�aGW�����xD�`�����'19�����/A��:�l3y��ڜk  �=��4� �iȘ �F����g�    YZ