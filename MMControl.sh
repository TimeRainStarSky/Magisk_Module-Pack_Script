#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMControl.sh.x";abort(){ echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo 5a6a5L2N56ym|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "cc77e64e910172137021f339a5741adf" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��B�*�] ?�E�h=��ڊ�"����F�7~�>�]�v�fyX.�����G����@�y�|8���2<����)v�7�Z.��IG��:xb�����q �G��n~����i)�Nb���W(�ԧ���)��[ E7T�u ��v�ׅ;<8t�f뼰*"G�[�ɘ)��"�L2.�?�Ǘ<%�����������'_��QP>������a�Krҟ�;@1�G4p�x� تuK}���P�4&��NA��P��;B��ǩ�D9�2	U�a�s y��nlo��y]J�R�z>3�S�S�V��';tF��l�*~z'wDa��N�c����ָQ��'p7/��߆�c���dFE�v��QߩUP1*S�;��ݳ�l�C��(�Kp��!ϋ��`1(��n/3MӅ�\a���d-&A^wK�]�!x�Dx�u4d	��Ȅ��&"y�Ϧ	�����Q��ZAg�7󲃴�Ef�+�ld�Wկ�',Q
��8��U�Y�uX}��9�a�?�f�x���̛�,2SL��)i#��y@�f�ƻ�Jb�a/��5ޜ�Q���'��þ �Ϭ f@0�Ū=V�8���ʌ��𺧚��7{��d��.�\��������<V�+��On�"y�7�����d�7��������닱�;Z�hT�ή:8�Faj4��-�)6��Y�t�/��9u��&x�su|و�}��9U�Q���*�y��c�2�~r���~d�3�%us��F�;!�:6N��$�"	O�<Q��\���T!%�G��Wi;z����}�^X{�����"�pQj�����:p�^��v���tSEx.�Qvjf��*�ל±M�*RC3�nv�ʒ�[s��!�6�'ʟd�jo��x�yu��WO��
{'X*&��c$�[&�mv��K� ���t&�|��bt8G�6˻�m��H�6L�a};��_�_h�lzî4�aA�Fo�;�x�St����f��gU�"~��$;y�2h]$��-�@5I�1`fh{\�����X��Ui7���{jR`��/Ƨ�=�a=�PK$z��}B ���\d�'�3��k`oQ������1�e5�����KT.�!�V��t�E�<��cw6W%�!Qy����Rf�h9��R�{�52�\;rnCP!^��ڔ˛��u�z<:ע�W�[2�|��(�1&�$�0��|���5�vC\"��H��jEkTBɆ�ˏ'k�6���V���>��p�X�P)ms3G�ӽ����%�%&CE$;��Њ��Z�ݢeB��9�;��4�Xi�񖜋Ud�����DC��2��o�Q�0�]��j��2D�i\�X5��Uޜ�F.j7��Ϛ�uU|6��� <��02D��5���;Ūʿ���/��*/- �&0Qq𐔩���ªw�;y�Ac��aKm¯0U		0-���4���`�r���4�g`r�&R�.�K�!�y��c��k��C��|L���yt��%gF�����\�RC�)�n�g]����q�밧g���J�d�>�RFly#~U���2I���I��X'����ފ��E ��j���R�4�.�@����a�e2� �v����<�R ]"r�3�|o���jx��#Mb��D���x��s�������~�՚�>5�n'��<�e��KFL}�>��d����n]�����կTU�?v	:�~�o��s�w��V�k��G�m�r��➺չ�RTr?aN<y��U��3j2`炈`=�i��(՞�����<�B)	���A"j;D�����7�f�8J�3eF����z���U�j��ZB���Q�Cj�H(�*�'n.�ʶ�<Qd9�jy{�%0JI��ER"}�Y챰Mip7)�.��]�΂�?�|�݋:�ԧ��1��#s({X�堟2�.^|��d���"9������>�W���K��ً�K���)&��*L1��R���r�(x��}�<���A�YL{�Tg'�Z�zZa�����	��Q��\�Nu��kL�w�^��)�m�?]=����g� ]x�!^�����c��Ԓt�g )���#�"�'�
�ͳT?�=��;BW�\=8�?΀��%q0�(�A�y�h������ ��,q� \B�SΛ[Vl�����mݱ�Q;,����6��
����l�a���ɛ�����c�n������#R�F.|���MǛR�'t0��B[�ڌ�XA�U5� � yry����òϓ��Y�?ns�J^��A"�����3I�ng����f�Zc>T�M��S f��lX�F{�Â���kR�I!������h��}'��F�h2��gϵ�|�r.�����*�2�l�#�\��^���]�a5�ߡ��bF�t��R�����]-X�kj@޶�\Ƹ�ߞ0�C ����D��Mf�`�7��\B�]8%>b��b�9P�+��9
~	�c<�#O�N��|�����B�"{s���>ys8��i�����)a����uf���Ұ)|55W�啋���������z"� ��/�dqDY�#�Q�d5}�zPH�n�)�,����,��<X�Bd�ч�&��	!�$����X���; A*�x�Qq�0�>��c����a����F��N��ʾo�yD�&�
sS>C�qo�,)�"���\�^�G�^��=�V��Ȩ�V���1r_��D�6F��vl����iy�����B�ޛ*�l�+�����}�pA�e�����f�*�U�3Œv���n`?��)�h؅\s�E`6���+�u5!���À��,���]$���S�&[�����t����p ]�����/�֚��c��Zo��`G�g&yi�a��|���@�e$H��9����1=?ُ�FFdaϗ�\=��8-���N�AͫX˰ڇ-�c�|����+�����
�
gE��Pl��`@pZ$�}�3Mĳ;2�=��� �"��!)���O(����[釖� ��֠��`[�x��3�1hj~d���-!���T�9`֦oT���|�3X�@�R���&�w:�YL(h/؏'ã����Tm�|��G�n�E���=y�CfMxpu�L��v�2ld��P<���f 6��ǅd�ɟ 5׃��Y���8a:����~��|����w[��3D{�����l	9��2�r1:8�u�LJl�����/<}[9�����Pd������B�KyY������fYP.B5��Q9���_w��f-�)��T7��@y>�����9��i>�#xe ��X��k�:y��[*���Hr��@�=	�{b�,'�_��{��9����D�o#��9ǡ�g�Q@'�u^�)���f��%�+Ӹ��?H!�Z����'��_c\�:e[�;�h��H�݊���׷
ğ~!I
�<������Fz�I�eu��r$����H]�^���BC{���=ˈg~kF� #�g��JD'� TUu��k* ����N!�]hSĄdH�>qY���!� Q�7���}F>�3י�j��A���6�hd�������ɾv��O)¬��}� �����{����N2����Q�1Y�����B�<�tz�pp�]�����j��}�bp��T`f� kA3�;^��v~����0`����y4Z��z5�^F�T��[��!���c���aկͦ���#��l��^~�S�hK��9��s �b�����=q5d4���\9��k��y��?v#6�_�±8b�P�דQxY3@�_��J\�&��!��CtQ9l����������/�2&:�!�cǩ��Q��=+o���Ԋ��@}�:�0�9 Fs `���D �����̽p% be���u�I6��m@Ӗ���#!@��v�*�O�i��L���+8�T2ѐ�/-r���c�'C�[E
3Nǽ���z#����<�,!�8ۻ�8�mRsh2{qv;�ʘ��-����Z��|�bS�����?�P%�VΕc9�K��gh��PT󃚅~2�(nqs?X0��\B^m���]�gN(r�+P���{��)Ｐ$	
���q�<�@~�7�tMUD!��'*ͩ�� �N"�Aq�OaD1�H�~�ǭ\�Xe�q��5Z��l���<Q�P�Q-q�ƿ�vS������^rM��&{�z�]Tp���Q~K�	��j�/
�p@B�:��.����v�� 3{�
1y_�T��8����'TД�p�#}díhWH.-.{��������1�u�?0�����q�e#b#�D#���+��zC�Mx��zl[|�!	J.7H��d"�����:?>4��3C���Jˊ�����4��H���t����|!"�^�+U�n�b�_��^�bx�N:��ɰ�[���Dc��aN˂@��"-�6���&��tCd�w�:���q�R�V�@�+-��F���[���$�C���g���і�G���J��JZ�H��a����c��~fNx�}�!�<����"8����O��q������Mfz���!���w�,n-Fs�x���Z����J3�WqC
���p����0���d�;�sBt���&�o?S����Wd_[�2��#��C����cn�fos7z�J��QH����Ϭ���7�Y�/�WAOk�fN�V��_a�D��j����+�ۑ�.��v��ݙ&�u����`�Ut	3K��T!6f�"�!0�q���z�zM ~>�=�d:F��y�2�"M������i���&aC��q��H�朓3���C�� F|+n�?�,�������.g��g������{� ;�(~��>7�~5�O5�:�Q�:�%�,p��3�X�]ۖrW�\"T��#�K�W�R��c��`��*�fŝf<C2J�`_�1[�m�X�O�N"5������*�9f0"!%�y�M��M�}i�:D�l��p���BJ�xi���^�Wd�[v�d�.2rY4�Z�i`-��x�io�ь��m��6���/%�%��}�>Յ�#m}�c��tH�˛�x�Dg?���A��7�t�ò���(�Nv�+íU��E��{1m��5����������c��k��)���F`=EE��}�3ݭ���y���G�?�qy:A]� M�> �w� �{}+ے��$�I)/sITdoD��ߪ�/�� ��Y��8>�Ѡ,'O}���m������84E�N��{3� �f�9NC���h��.�s!����/�^�كi<S�4�KxC�&!�;lGz�&�I�Gh�����O_ʾ}4�M�	���fFK?a>�/*����|O(TS��NA�//0�s��&h�������N��'/�"�)Jk�k�]�7]�}���aH_�S�N���=�#����Q�+!4�mz:���d�[�SM�Z4E��X�����v�o;��0?�1v�����(��p������<�$����~8x�
A�&=�l$�����������ct��%*�<)&I1-�eOt軟��T�JhS�_|��GH__�IP*޷Ы:��dy���)����4�iC���Lau� I���?gN��)q��b�v�A��/ d�gc���n�K/RE���,���@��zTBY5[Qn5Z����6
ޙ�Z��8yF��䙅��
9�ϒG�"�P*��sx�q�`��*.j�!�5t0u��?{�W���\Z��@��Ǖ���<�<ζ��ר��7zC���,���F��SV�ºR������G��|�0/��;p|�(������P��7���4��ǟQ9���=���J�yZ���Zf�^��)�y�ꘘ�K��l���1����5:2�8k�l�nqԃ7���t����OC����t�Z��Wg�k����\0���0,��\7��G���=�]�E���F�����"��;�Y=W���S���c��fj}����� U��+�����]lK�v\���%ϐ�T-�!�s�c�ov}� �{#�)#�v�6�++�`���UF��G�T��"�v�=E��7G�;�6�BI0W�v�T+��d�tI���Y���a� f��'��ٛg1g}���]y|���i�<o#�*j�-���~�r��}��l'��䒭��|�'���]�����f���TBݩ��l��-D��.E����Xv�� �UV�b\�����9�e5�,����͘�&�f!j�FW���o���n�!Id��}����F��5��Ҿﮣ�����l�Z�0�~B_�y3`�Jo���""�߹���z�9�f������b|��7�ji-�PXm#��q!��M����. �������b0�7��G��jp���ꉰ$;��& �����T�Ͻ��m���,��ET�j�^���O���9��}fղ�c��|$�E�H���ٿ��I#��}�d}��4���B9!vր|q%��vyiR
��x�~�b+&v\�DXT�xQ��U�f� z��s%rnˊ5<�l����'?g<E�ܮ�!*a�x���@��)� �	��_ÊW����J�1a��8����ѱ8ĩ�N��E��1�Z�����rȝ_qFn�Q����F��u�D�E�\����}Z�O����NNc�I��íі��Qz�Iɛ�K��),k���R�9*`�/M�~�$V-��[�՚pK/����+�# �I� 2�)�R����Ң;���ҋ�n�{|\�T�`�N�oE����J�*(���m�F%TWk!���fԑw%��o�5��	��+�����+T�C��W�yb����rw��ݿd'�dl�<	���8[r��,028�o� ==#�7�8��X1ĉ�.B� k�;��6�K��)?�����G����j��3���2����	f�35���dt�Ԭ��m�
w~�.ߏI�;ok���n\��Z! e+���� � ��}v�b���Y�R������%��k�e��޸X��O�*��B�	��j�����T���T?VJ�I|��pꁄѴ�,��)�)8�}p҆c�t�̜?֟�s�}�Ӣy�K�N~�%�ć	��Kf=�Q�N,���b�sd�u��aGym��=�"F?d�N6�/%�s��H�s�L�#��>�!	�`�uJ%=�Eob��JR����x�l�k�G�����5�c΁k�h�a�[{��;� -�e�x&�v=B��>1�H��A҅7�i��eK�ᓳ��j}�GA�D�+d�LK��6����|m�:�PG����td~�x
*�>P��8�X��YĶt��,h	�\A���]��1;5���0�$�7+����&���3�4�5�:�/-p2�1Dp:�qc���b�v���.����s�r'v��VD�}�k9���Am�J\�=�N�v�/� �]Y?��
�������jDV�;��H����Zo߇����7r�>��J�ؙ�3O�i���a_>��i��K��(�M^��6Bs�:�6�I��g�3?_��o!�����@9<��2�E9��[U#���aRG���Gc'� }<%O��v\]ISU�m���'?����y��v 8h�$+�� ��29Q�j$���'��[.r�w�T�]�a�e�������w{�/���ܿ���`SHgx���$U$C ���F��~�	�On�ls��j�B��%kH�Fq�	JV.�^�w�;�jPv���%
58����9�XI+hb^9�����wwd+O6�˪ hy�H�:�Y	���yA�amʳmc߈�0uWQo��W��g*�Ƒx&g	�^�j�&CqLf��]��9��/����r�>��c?�$f���ٺOGC��:П�Ò_[O=�0*�C�3�=���>m,�	�<P�<�)���]���gƸ?�0�T�R��8`�G�iz��1J����6��ú�K�m����n�'u����bZ�J+1��:2}� =�:���s�Ɵc�b�ܛʑG��F��I��fA[�m�1�]���A�߃;�r^��\0m���m��tÎ9��pu�I�o�t��5�O!���L�Z����L����4�7���*�Q�Yk�#O�Q�[q��ݏk��ʖV��@=kG~��|�gBP����=�p8� 0����<������m!��%b> u�d�����iK�	���h���F�ښ�<���1�2�%�>�X�H�=Ńb�_�+�7�3_x�UXXIr%��&g;��M��P�~�`��.�Z����wS9���ԏ3�/Kd��J��O���/���<_R56JV3[�l�虯�	[%؆ �6Z�7����OQ����r��[__t��5,:��<c�-��+ݖS��x��[������#��W�B��66��v�Jz��;(#®(n�II;'F4��L�Ʉ�uZ�tb��oJ	>��8|��S�V�������N��L�%���I٣����7w+���(�3�m6~�Jf�0�!�ݯ�E�v;�����v_LߝQ(ԙ��< �fB��h�ϢҺ(e�ZV7z�լ2�Ѭ��F4#����;@����P�c�i�/ִ���.�۬��ͥF2J���ڹ_��m�Fե�1�pJUZM��l�h��F�;	�O������F�:���d�*"�᪔>���j�6O#�b��b�*�}�p�V�dϊ �GK�ဈ��Jw
�s�������4�6��F�¦�D�+�|�Fdtc��K���:�1�ۢ-�"%7@5��x�M�O�F˲ܥ�$�U�<�=[�(�+�W���?+Ga��]!��!֍�� �F�5g%���
1|�D��cE�l��;���4�6�N��u�Rv�F���X�䍮es�@$9u�vn�gę�.F',��5���c/�y(c2��"�U����R=`p$iTDiy�K���jxne�,�G�Y�Tg*�E�U���ŉ�X�

D%گE�.�4yрO�ii���{�b�)Ԑo��W���B����.���=�vֶVt�Y��=��_�6~��ċ^�nvov$g���wY�xɣ��p�9���
�m(^�� k -���L�� Q�Ն����q���'�7�%�V��
5�Q�׾�g�ى���U�_�	���?eC����b�������X��J+|t���^9��6*_�LW��l��1�@�"��_��oq(/V˒r�<�>��!\��ڝ��#У�JL1��8��p��Ҷ�f_�Mq����R���]�d�E��b�GT�a�3�/f�]���ڞ��=���d�I@��Ev^9���6a�^����s�9����+sQf�!Ӹ*�1����Sm�.��+.���(�Ԣ���'���/'w>�u����G�k��l�=$	/GcE�ʠ�������BY%Z	]��-���h�Mo�]��.x� ��	R��������e�f��x�����D2tq�⇍:�lĕ��߻ߏ)�Y ���pvY�=b��U?CTqS�U��mz�ąlCZ�
l�[��t��WDfƜM>?�4��V�\�O�{*�V�K@(IIط]�a�IP�+�������ˣ��o1�R9u��7>{�"�~J'��?���?�{5�v	B�����q�L䫪�[z� �l�;ݣ}襙��:�}S�$h��J� �Fr!L6�}a��F�I��&�g<ߴ�e=u}�:����O��{�W��[���t��j��8�m��-Y���ܙf��a�̸���o��qݮ���$��jW�nG�M-f☒�3�P�h��i�$<�&�.(��d30��&~�Ʈ#0�P��!s�(>9�-T���o�X��S�.6�7	`L���-"�F3C�3'���{�NecQg��v�Yh�)�{&���b�*��|��Ѭ�Z��̈P����d>Ξ ���4�D^�rv!}��Ą����GVb���j���zč�+�ڧY�-mYy�;�pM��
�����G]T�Am �fQ���<�)�U����d�ܑ�\lX�\P�s@���ӭ�
�+��ܭ�:��8!$�Y�kh4��n���Zv �W�����on=@�JutC /޵���S��B� ��(䞫�Z�Ʀ�E}�v��1�Q֖KD,d��$�:����i�'��aK��I;�h�N�˳g��%=KGr�r������_��|u~���\��us��ܪ�U�� ���4ÕN���� �mI�=B�p�W�H7��Xz�ڼn̡~���Fq�D�۟ C�tN�d��0�5�t��l�@���֫g��qFY��hJ4�����{G�4��v�:�32����Y���� x���o�d��5���n��G�5�Ĵ�]�՟�E��q"qT-�yNU	o���lk��Ør���e�)��Y�>���6��A��qEܿ�w���H�ϓa�̸�h���@5ek(CC�r�7�o����pf�����!���x`�pSV���mHwS�8!�c�#�V���v�Q|� R��S�aP���:b7�I�v�آly�d����2*�o��dOR-�M�q8h?���������+�7��#(5T�>טQ���Խj۝�/�O���10�� ��럈�ƿX#�g�/Ɩ�tk�N*@������d�2z%9*�=�"��#���/(0D�����\�e��s��+�I�w�ϐA�/N��,hD	�?��:��Oa8����v'o��E����/Yb�+�%E+�avnJf���[j�v��x^�n/z4E�y.�U&���qm<���_���F�� �p� ���'gʤ��j��Ɖ�0�'��C�O��8�����ڲ�'��������B[����$b�}x���Z�Ǡ��gI��W�h�x�1u�St���dx���� ��I�̗�+ �V�� �3�^��g�    YZ