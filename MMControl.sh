#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack/MMControl.sh.x";abort(){ rm -rf "$EXEC";echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "da7e032fb1be2fb54411877e1bd4b734" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��K�4j] ?�E�h=��ڊ�"����F�7����tݹzah��1K3��A]���Z�B��zb��*���v|�ꇊfSoew�,��)+t�Kb��ev�-�����Z��[��d���i2k�VK[�hC0ຖ�[K�(�X$���e&=Q.����ޗ./��y��4�zWo,�d]�ܳ٤�jI�m����U�Z
� <�/��r<�JL�e�j�A���}>��Ô��`�nP3���`�<V�܆�D��:+��>|P�\�H�����{�+M�#J������^E�r���>���:�f2O���]��=f7�MD���� b��3���~GL�xP�L"8�+kl��*3/�c>�q)�7:�C�͒�EG!%�}Iå�a�c"x���T��oI�6��HH��F��ݶ'㙀/�"/ρ��.�r�@#F���{6��['�v���|K��Q�S7��=�y�0V �@/4��u�S�C6�Pt��u�Wܞe�fa'佨g�މ!Ű����UV^�&���g�*��D��}��S�`��d]�m�-���h������/�϶a4V�߮0G#~��@e�}ٚ�����'��-�Q�H��]�r��G��Y�ɥ��
!��8��S�.��-�RӨo�}6�W�׷+�U�u�ne}�p���l��Tli]a>��F�Pw��8k���V�mS���͆��%�b^=�:87ږ�he�!�I Οѱf�ƞ����[�HD�3)�_	{:�����wd�a~����ĳV���xB�n��	)0�(�a,��	奎QE�O
�hIN�s�����\���g�7xJ��X�Ā3X�����_~���8�	���۹�iI�tڄ�uٽ���@���jZ>W ^%�;�6I����T����/�K��ԥ�����g�pu�w�u���) {<���
�B�ڎ{�q�����_�X�Cj�2J�Jċ'��=���ov�~*���"{o�h1�z�t�;�-u�!$��Cɓ���]���:o��ܾ�'ٱ���'�ґf.W��}�5�U�B�B����b�#V��6K@(LjyU��qP�M����u׌�k���ł(�r*�U��6��mi~���W�V�~g�Ň���R1H*N�2S+4ʐ��_��O�����I<��ar��e3��`Dh�B��=�D^��?�����M�.��H�X���va��0�q��D2+wr�U��Ҥ6.
�w}�x�[:�%�m��^6�8�F�%�jt��;��PBO�����u�<,0��*���f�bs��%J��� �o�ee�Jġ�Z ���o�d)$�͖Q�+:�Mo���M�����}���X�G(�m�']��ɎF���}/Y�\��Ry�]��A�8��y$�V�D��@�.{��|I)Yjp����`���#���6�>�����PH�+C+TGa�q�P�g�J!��}3�_= ����&H�����G��pmd�|_M�ai��k��Κ���VZu�X��!΂��M噌��M6�MT��zS��������Ȼf���G�.�^[i ��"0X.q��?�窻�u��NP[���N���,�R�T�}�x:c����e�w-�q�*>�ؘE��� �/ꑩ��_qL]'�>�
��:^���f�?��;������_,Ƅ��vB5�4!�\Z�\���[C�$d��4�R�ыګ��?�QW�Bئ(�Ɯ�u\�^S+kgn�c�H����������{���΅.Qb._��xI��N����YAj�aF8�+Z��Z*g���Nc�B�By�1 ��#F����9��[3S�_�˥Y��j��w�7b�ڣ�Z�r{9��D�LJU��q>���X�����,�cG�jw�Ӆ����H�'C$�~�f�XN�
]�,�y�A�4���ڎYmd�n?)	�!�#�P\E�����S��ɲ��;��T�TG��|9&1圥��R�`�z�q�p
���S�\�!��%�Íﻏ"�3�y�y�DR���oM0R��S�c�\L�-El}_���,?��@���|f>���+��~(�bUGl�E���e�*��	�$����9R���4��
d��=+J�;̏svC��q���$yU#�^�M��5,"֋?��a���i8v���0�Z7@�,��%z>�G��	x1	��ya|@Ӂ]�8�"��>z�I=+�fأ�6{�6�B��'�ꂧ5U�$?z���=
��a�2�=�[N�6H�>$DR��uU���A�m~��Z�/I�%G��稗c�ej��y=y�8J2����0
>P�|��#�5\Ef�I���ڨ��Ʀ)�c������_�fx*}�TIG?0���7���*}k��{���܊�8FW{lu`�9�ש�q�*���!0��HjK��qQr>���̭��X��o�Շ¿�ߓ��)�+N*c�t+�7:����h即�w >�[��Et�b��r�^S������54��:@�T��P��W��SeM_���ln�OE�<��W�_ B����&|YS�p8 r�w������h?@K��B�olt��(#\�C=�HL�����[�ggS9���k�dA���eo���k�Zȩ0��[\a�W�k�<�#�1�f��m��nO0�ոS���mYY
��Ze�۔����Unm}��4�q���p�j�vp��AC��$��j٭��B���\�8�t>9S�d�M���/�S �Coj�
����[���l�e�Opp !��&��ȔvP|[�<껽e��7�k!ވ�Y�:}�C�=��捾W�5Яq�"�r0#�d'�S�\h�6a�یcqˋMfST>�G�J�?����#�m�8?�n��0��؞����%�${�����<���^]4��m�>
�ܞb�o�k��[SZ}����K蓏P�c�Q�
�z�w�h�j{�"�����킬�C�an�Cv�,�e����u|Y��S$t�햼4/i�[X��m�:Q�����{
i�}}��)�N~O��;$��]�����dx���B��&��aК,�̈#����	9a��K�!�A�5��Y�����ȡ��	�{���<T{&Rߛ:O��[X�ۨAԂ/-:��z��(�����eo�dB�����P�G���5�q.���Fq<����3����>����.`H�?E�;��QG-�y�9����W�
��X��g���+Wt�UYuM��M5��ӡ�����bϲ��[���5�B���/��Y��阮� ;(���Ak��4�^w`z�U�Gaxp�3�F�c���6�~L6��*�X��?1��$�mŇ�7�k��6׼%�ͩwHӀ�i�tB��g"gl����w�0�/�C�Gn.%�O�*��T�BeՎ�P���>%�~��D\���*Q�C��Ʒ@m����4>�soQ��x;~�_Q>-w4��ۅb�e1(����	���}i�qn7I�h�����/v�P
3�˫������bd�6V�^�3\��E�3��[��7x��V��M&34�-^n�5��)·{�O�w�@Z�oRlPA#2ԺΙ'��~9O;��_\�J�c�2�в#���@��d�|%�VZ����87�W��a2Rբv�h�� g����<D�c_�Ѐcޣ0]��l�x6R��H�@����X�BX�۟�դ6�����W�ǆ7��(?���u����3� _�@��暮�Q$��n�F)P�y:l�&Q��[^��VuT)�y:6b�1J*��D%T��W��|Ԇ��M�i� zAL���,�6k��\�G9�̎���&F;�$��F����884�\~$����P+^㮹����z�iV��CΛn�[���M�3#�d��=#*�'),�lS�E���?�U*~��Ø�q��-�a�'�zc�V�i��:�����鵒7ƾqл�*Cr�9�?���	����rB!J��u�h�l���0������{�[n��\B~c�,���\)�̑AU(Ct��j����q]�^m�%N��Ybpe7˦���ofO�i��d��
��Vu���� B���	��f���D�����>���b��KN�ls	�3v�8�<��q�\楢�>^9p3�{�*/\p�v���E�$�0; �C�>�����f�n4�����n��	(�{Y}J��3��_j��W�d��=EhCga��wޜ�g D�k�� ��j���%�����w~��������X��^��G�Xk�af�c���(x�9b��d
dUo�*�b�@oڃ�q��}l��=�,�^���ɕ����l��U�C�+�S�Y9b�"O�o;����ޮo�8_ƕ�A`E�eGI�K�����~�vkjуWY;0qC2*ʌ���o§���"�iK��Z����2��f^ꈡ�䂻��%wX[Ywg�4�Ȁ���iRI��h��8[d_��y3�MLr��ی�vB�208V��0ǡ$�њ����%�Y�.��MCX~�	�^jU-�˜��3��7@����l��rL?Ї_�+&H6Mp窙���'�qk�#�w@9�� ����黫�b�p���~q�Q����U��_���Ѹ���f� �*	���kIŶ��ۦ��R?���9�o�g�m�Cb�UP����������1�~���8�^�a49lH�M���l�|�;�IT��Ǒp�b��X*;K�W���SIĥ��{��u����'e�#4"&�S@5�*|�}Z�L<O��r֫	o����I���9�m�x�=�ĉ���RwT4��md�v"�Rpk�]�l`�����u߼ ��mP�)=@�w����A�:�G���g�@߫�A��w�u����I]�s��:M�~��O�Uro�Cg��!�C�\S��5HbbM��b�F���p
!r%�@��qm��Q�W���I|鳬L��e���[�s�ĨL��
~�9سp�<��L���#-a��ԌL�f���|�CL/��l��fI{_���-�b.�P9�5k��ģ���d��GL��@����4�O�e�D�ڍ����i��bZ�^��ڪo�K<r$I;��]�V��&��	ؙA��@��)��������];s� �٪�J��ŰGm�Jx,Y��
u�8����InA٪���Ip����r��5ޢ����x։YN�� m�P�=�|���u�������A6�Q����J�"� Y�o���_^�n~-�.�hz-y� T����΂j��o.m�e����3�KA4l!�4j�i�4���m�7_���bg��ϔ:���JӮV�V �&����[5c� ���1<n��Cd�G1|��U0�!��]'���I�s=7&��zQ��q�^�Wɬ��<���-�胎�().tK��@�O���'y�ؽ������}s,�7ҏ*wCi¯��4V�;&P?�5�����WوB����PB�V���C�I+Hr�1��a��8�ɸ���)�����t��}񯠧�afKd#|eKߟmɆ����W� �Q���<��̕�k����M��-���������w��	s�6ڄ�rbJ�Rf���6_�i���3��"&�6�!Pk���B(�V��q��h�7R������Ӑ;�"o{���9�Ӌ�
�1�vTכR�����GKT�ĒB�^GF���%&��Y3��&EǗ�U��$��|���?�{����X
���<���}��(�\("�E�������5����J٩��h�8�h��\��k�k7����������ab����Cja�b�8!�xE���S��.�1>o��&}*F�~���s�y��<\V�o3�(��,���q�k����B��>%g ��K�X>h�q�*�,��p+ #w"�.�h��z�t�2Z\ͦ����*Se�S�ܛ�U�?�Mؐy<�����u���B��.�"�;!�f�:cI`�;�-����\LUZ뀂�d�Z#��F	o���
�&��F����j�D�[?E�\� �BÇ�s�i��k�-��t���vB[��jq�.�w����x�#��&I��ɩizpv8X��7�l�!ˡ#ڒ9:ۀ��8��+�/'zI��W͈�Bf��t&�b}1�&�+��w'�t)��i�qx�����\�qI*�::�ߣ�Q=Hʎ�Ye�Y�7P�v�S��7E � ��cDh�郪�4�$Hl�o ��U�`pF��2[Y�nh��X����"w1�oES�(���N��������������	b��u�s�9�"E��⎝	�_�f�X#����k�+Rm�����_�K��ao���ڙ�ys2�xw�<�z#F�s��a�L�N�ʂ��q�%��>S�9Gt7�
s������>�yBM����E�m��6.��
�Bc�=H�f(�s��M� ��K�j��,K���| �ъ��,��'L>N�ςn��w�>�	�{NK�dn�Y�q�
_���:��V��|����2�Rw��UT�E�L��I`���Qޅ�fk�u��0*S�U0|R��D�jsv�k���I�>���kЕ-U��������Un�_�3��u�:������o�]J�C4B��aל��k���W�+���Tft!�U�ݿѺd@iy.:Zqy!	vPp"���kF����l����45I�&�.�p��N�8�tk������U
�A�'��'�w/�r�k�);F��(Bv��X-)4�ߑ ��?���O[�s̒p*ⷋ<�Y}=+H��Y�{	[8%x�\���\R��4�I�2�~���7�iT��7"�s n�F�E�ߝD�5v�w��;;�M�#�.p���J*բT���~�M����.�;��hU�ekW
�z~PW�Dg*��7��z\0��|�����L^q<)Y�lP�'8Ĉn<��<� u9Xx���zs�ia�/��@O)U��g�`��F�H�B��,�$����=v���rk*y����U5}o���oݽ�\m��������ܑ�U-wz���C���)��_7�����M<`�B_5�PZ�Ϯj�TV=���h0`l��P)�(��+����h��������t��5�s#ǘ�=܆B8�F���o7{px8����<T��dg�8]��ݬ�O���ZY;�C�(�
�0�Q!7z�&󨒌a �%A���A0�
^�񒱾
�^�Y4�*v�� q���Q���L�k|��9HhgN�����"��}�2������� 7�����D.u�	]��I.�	���(�28$�}�*���֭0��%�!�����#M��᫥�m֘:l�j{p��1��sG�1��-��Q��0*�;���C��H����>�IQ���"��Zمq*��`�@l%LiB�����)�rdq�܈�С��$��{���X�3�xs����T׶�A�O̏�j4=P�n�Y�ay= �8E���W>&�|������C�n�k{}��l~$�M@�%VY��&��Pd�9AA�_!&4�(�#���fܸ۶��h�0f��@AME�<'���I��e����H��F�����v�Z��ܿ����,��ZR��h���	s���4H3����5�_5�pI�[ʏ	3�W%���2�%�0��29Dǔ��p1��ZQ�@��W��b�:��[��>�A5c�1�k��!`�Ԝ�J������B�,3�/v����l\����闍=�,U96�OLV��I~���A���)�1��/8�n?ZN�q��78 krk�9���Y+�V�w4��G�)�����vBB"��"COO���o���>sm�g3��W��Y��~V����F��h�<Ơ sUU�u����Yɻ�0G`��uQ4���lG�љ�Yc#tB�S��9:N�A";+M�ޝ�-S��G�E�`L�zv����r��J�r���a��S�0mȰ�e�^<���+[e/��jwR�^|����%�KP*�?)��{����Ǫ8�d@�6E*�����n��'�fw7�2�֫��-���9����q��qyZY� �=A�x�Wպ`swp)��o��G���	��G_�RG.{�`�����AξsT���d�|��O�K*�xZ�D�̯~��$�iN��6��LR_C$6B��4�,�2ch�����5;i�9��`5�o�f�����PY[�c4������ZI��6�����PL��x�3�;��]<�圎��__-�vƖ�FAa���`L»��c��Z�o4��Y�u����Ydk��Z���`cz�>(K�g��"0ԭ��GÖ�dճ����������>��#�\t/w ����;����uN�@x����s�A�ƞd4�џ��eCdz�t$3LT@�n0��DH1�����j��~���r	ƴUܗ6X��W8�7@8�+	_��Cf���y���{@�z���h��{;e>M�c�1�ŕ=����3�RA.��@�"ۭ�_Y�V��v��aD���ʢ�'c�f� �\n� �6��Y�c�3��IWᵻ"'Ni��һ�o皭t4����Šk�]���j�9߃��|�RuD�Y(����w(������X�A��_�݀�Z90=�DV	Ã@4ͳ1ja5P?����ǿ�Z;ͩ҆ޟ�Y �}Aҁ��QUÐz��-h�8W�?P|5��#�@��-�|�ˤ�^�,�,�%~��G>Mp	L�4e�`w�p��>?2-{�*�J�+��:��`�5��$e)���ُ���W����s&G�֓�Y����:��y%m�H�j�[a
� �`��*�-U��������[�S��%v���H4�����߻���7��QvZ�!,p{��r�wN��j��RG�<�!N�����)0^ţԾeN�.���"C z�A��m�V}�=FN#�g���i��C��)�i�m8�ym0����:l�ؐx(�K��o�����J�eŗ�M8D?�������ݕ����_���\Æv�o�� �=�>���*aR^�T+[��"&*��fWYJ����t[w�S���o%�W����e�fj�_��Hۂ�������xL�0�-D�O�5AlӀ��I_x��&�������eM�z�$����d6+�sF���S����U������c��|����t�ü@�K��)��\���4Ч~��Sȫ9��	jkpe���-@��7b�wwӏ��B�B�Ah�	�=��L#A5��{}n�WVGZ;'��"W��v"c�j����Cu�a�`����3>���I8Ҥ�hN�������E���p�qbQ"yh�/��*#�pųL�[�y�����P	��z��[Ҷ��BJ7C��F?>��m�� �{mt���Y��U�y��z��7�t6�e�}�������)Yd�E8��I�	��IHʛ�7x��:�)r���f�osrj05��3&;��ˊ.e>,�Z�>��Z%r�Kq��.�A���c�I�1��V"<}�;_��ΰ�H����a�gx�d��J/Y¡�qOD����S�Ϻ�0
B|�ڭq�F�\��D�����St�����@O�_vW��;�J+��&����{H�Pi�+!~hAů��	O@v\�: ������9yz��ԊPNV�d�l�g��?�o��y���=|�	��)����x���T�-3���� �vn�R��k3 G���vj����E�È���Г2}��J���'C���ϱ�'d������-QB�[��^]M�t�Fۆ�lo����4A=Y���_bE�*�d}�ף��ٸډ����L"�j���g�c�0�� -�$�JJ�c���p�[�n@�24DJ�����c[�P��c}�2��O=�s��O�kD�q��rP�KB����~�#�rP���.�R����?�'����Sb�و#�I��ͣ�$�C�[�M�'s��b�p+�|�Ĩ�[M�=���HYH1m,g^xb ������D~=G���)D,%b�U��}2Im�ӊЫ,E!����YlHb�ԡ����6���� Y��
+�6��4~���3}6�L����ś�柂j!��}j�n;k�h�å���֠�hm����+RZ%DV��F�?�4]��� 6�>{�.qMwP�&�Zn4!�q"�բ3�u/�<_S�����z1Hc9�q�\�E��HԹ��c�Y�,��|*z�{X�`�u��<.PE�̪r���t޳����7�U�;gd�;��P���A����vv�ѽq_���[�7ߓ#��M0�������F^��S���.��%�҃�����^����F�q\��Q��}n:A��xqj�?�f��Iwa�Tk��bʅ��hd�E�@�3!����i�d��#�|{�N��9XǇ�i5|Z�UN�B����nY3��Ȏ�^��:e�A9P��m���D�+2nfǷX�	Aw����o!�!�0ޔ�Dr�4��|�Z��v���R��r��`:J+�3�R*���	%ڮSsxq 3�L�Ľ�Z:�t���_^����G�͏i�d([�u$���eJ��:n@h ��5 �
��y��{���������nXT�hP��69qj���VW賫ӭ�MN�-;�!Ԑ�߼��1�;y1�W�!��p���z)�p�)����e�ë-vk�'��G'�j�_�w<gP�r�ڃ�}��L8G��'��f�������.��>�r8����S�죑�є�߇N���B���覿S�+����d������o�TŬs(��WH#I\��f����G	��]C�rof�L�w�w$f��e؉��ղ�l�_��6��z{y��Q�����X(D�v�fP��` �e}?�AP���<�f�/�N:b)W�s�'�W�F��Qeޓ����L���Ӹ��k��?N,s�&!��LM���4a@b����v32L�5(�?���4eN��O�Ipm������R{Mg�J�-��z.�i܌�ZB��'����1���N��0cAs����U#���/41�YG�7d�
�����m��i���3Hg����t�q�ʷ
3=���v����*=/e���ht�xG�\�IP��b�;R�B�.���H�����7��d���*�~2Н{�MS�	��ɄS<p\~����b���6<v㴾~o�93��F��77n��_��^��vY\p����Ҙ�v::./�_�	X�Q%, ��(�P�s��%��О�sS�^14%TO�~�ح��,/ɸ���%\1R~�%��iP})+�Rp��+.����e"22Lߞ�A��:z2���p��+=��K�[�H��Gޱh �BB��k5�"Z�]�,�6{�/��O�6(i!���7�B��=�t+�c:p��<�E�P�f_,�*y���B����W����$�7q��wV;+6}p^�\��Y;�O�'��aR/�1��0
�oƘ
��lN�虀��78k��G�ju�d�/�M"�p��Je`ͤ;Fk���?�[6������~�JS���ax�k��V�e�,�"�*�9� �N�ա�Z��ȧ4N��^�g�5����<�`���see���8��h�q���[r������.��� -q�/N��!\X�
�aF���b�^�W�0�Ǿ�a�h�H�!"��>�����'6�F��p_�qfJ".�U�N
��+-9�{"k������\�gԃѡ
Ϲ}�z�٥I"��Y�],�eaH������v1;ct,�:;�%��E��_��!�-��K�
g�L��b��s�w���Lq���p�O��gMᏛ1�mw,�(�dW�܃Qs��U�9��O��]�����
)�DT�� F��64��e�Q�}��8JA��1|nd2%��b~�ԩF��0b��kif9}Y�I��l�U��0���f��h���2���WZ*�I����|�;kۜ��f�볖�D(�U^~#�-�SQ��b��ib�7�*PNu���H~��gZc0V�1���`a���g� ���/�2�Z>	m�:nt�u�����.I��զk�RG�AݟNڃ�a�`	r��3Eb�
�J3{��X
S��ܤ�;�m	n��%�9�hr)j4�I� }3�+J�y�x��5,�;>���*�k_;�l�~�s�4� Y�3!Vi1�spE�ֿ�i��9�X�����D�?��A����6ɉ�|�Z�K��ؔZ]��B��|i(���y��c����<X�W�R`�Mɇ󛣦�H<�O���m�}ތD���s�.���8�4���Q�dp8`|$����6"�)�NHt�~�ΣZ���*©��/G��&$r����� �xj���\�i��\�HK2t��̦8{�d��la�I�K�}� �s<٤�Jƪu�]��e�T9� ��EȢ�Y�덫���4�p1b�ɗ�(��?��y��4DU�i��nc>��@���T}�P>�:H��"9�% �Z��|�ì�4M߮�+��`$s��W���$8b��ˤ<[�ؓ��n��O	"��ob\��$��7�T��W:5��G��Wo�o�j�3�3(�x�P]\�g;��*A��˅Q��
�i�;B�D[
z'竽FrM�
c��@��
�Wɫ��5Τ����>���J^��5A(S-��1uf�"�"DT��2
;�i��xH�A�X�f����I�}r��Tz�����̪����Ԣ;I��4�v���B3�:_��jI�QQ��vvi:3q��m�?�T���U����u�&֬�O�.����⳰�X���]D��힌Ǭ��g�n�� �W ��;q�je.z���n�Xn>��Ѱ��T��H�o�U6�C��j���1�4K����{��Hd:��\�}�$y?V&�	<�,/B�A�q G�CZN9�<%������T���Hw#����<t��B��?
��ݚr��ԛTm�gj�<a�X�T��O���aC��^@�^��F��9
���x�6zg����鹈ҋܴCŸ��/��+���=�����=�z���(4�c\�=L]�x5��a�8vhy���j��^%+c����X!K� �	�
�l`�Z���I��2F�\�Yq]��A����N�Q�J��l���u�������*y8Q�$�blg�O�懝rWS6B^��Q!��K��@����] a�P9����OFkuG�Q�8F|���s)��{C��R)�@�u��|�[�B�u�
�p= ���Z����~%JÊ^����$���F����y�����6fϭq�$�2))w�^��*���m�	whI��@؀ɱ��i�!>��]�v���|�   �i$����@ �i�� (覨��g�    YZ