#脚本已经过编译，需要源代码请联系作者：时雨丶星空
if [ "$(id -u)" != 0 ];then echo "[1;33m- 正在获取root权限[m";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack.sh.x";abort(){ echo "[1;31m! $@[m";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "[1;33m- 正在释放脚本[m";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo 5a6a5L2N56ym|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "b3b409dfcbe7a554462418314aa8db65" ];then echo "[1;32m- 脚本校验成功，开始执行[m";"$EXEC" "$@"||abort "脚本执行失败";elif [ -z "$OUTPUT" ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符
�7zXZ  �ִF !   �X��b�K�] ?�E�h=��ڊ�"����F�7�T��1�k�Ϭ���ꚿ��Nf���t\�u2�gQ�'�K�� EА!�1��y8�v?�͌k���A�g}J!#P*��K1ޡ�T���pJ{���8�GS�:��qhE��lw1���ժ�ܯ��f�g�h%���`�O�W�F��w0g�w8�f��`����i����K�4�W������t������l��+�R�mJX\����_��nH�k_ޠ_&>�m���Y���Xzw�\�B��	޶n4>icB���b_��������T�r�my���#�cJۖ�Љa�^9E��tӉseE��z�k��[QJI�&�h���:\�2F\�I	�f�M�xYe��	�yh�N����!�p�����M:���V]o�i�s�岄D쫻*�/*ڵ]&��2(Z�M�5�'sK�iL��S��&)+�����&ٶ�O�܈��9=Kⶥ�� �qS��/����Tl(q#_�	����)\,&�C �k :8ڹo΁)�?<o!i������R$��a���is�1��u�K��uٙR��SD�݂�
#{�w2ю���U�wtL�F�R���C7:��
�hQ�.�u~M(��7��G3��9�x��N 5�X1��`-��|B:�E.� ܥ��� R�6hh��#!_��b2��w;0��ݞՇ�88�ޜ��Fy�J���R��$;xs��kQt�1� R,�G˫r��h��K�TO㮕�py�����+gW�8�S��h9�s���t�����Z�x7r�$S��@��	�o�#��X�O,�0�0���^��"؞OUe����7��M�^��,P���¬��̂�d�98"ݯ��|���po����2쵿�1
��Y�n.��a�Eڬj�l|���F���X� xl���?��8�;^���ȫ=	�,�/�fB�ě��QK�6�)��?1��O��������2-{!˭�صw��1���{��Q�ɘ2Cg����fL۬~�NѮ�L����+���Xg�D�FX��}j?��dTi��7?_���lkV�)��|I�5�w�G�J��K�ZG�������fl�Ƙ���e��P�kq���*T�C��q�<biN^�=~�&싴dl�E�?/*I� �%S�ܶNӷ��`�]�1�R��P�o���P$+-9ٷz��; �"A�X�ax��~)�~<��fo��o��̈cN������ ���;h���_��>����FQl�CR�"Cg��9�a=���AC��X��uX���Q�FXM}A�y�0E�Ζy�B�YQVm�|����V��&=ڳN�ċ��rl�ƽ�~��\����/�0K��Z����/OG�U�du]���^��k��,�o6��L4�_�]%���@�`�	��YF�SȮl̉�!�cPFX%z�!�h̗�������
5�g�y�YecJ�jN�~��z���T��ԪK�r�W��� E85���sQ��J`!�W���iZ�}<��+��5��m����vt$C�W��b�1%Q�����g`(�~���GV��Μ���N�'dn��#bXi+Z��	��Bk��Ր��,�gny_���U��9��2�%��HR=��qat'Y2���Q���mڠyp����9�3��K{�m❜5�qh��u�l:][�sm�F�����/A�}iF�^n׽/"�5z�.�O�����q�����F�C���{��߳��Or�U.~��a�i�r	R�T�b��G���+ؼ�|C	,�ݸ�(h��n���M`T~f��>ͷL�+;�"m ���������{*�~�=���}#��*��HB{����R���}�L�H�PY2�s���r\1����<�p0�v79Y�ܪ_���}�ZԀV�ü�F�w9�Kj0n��"����p'	������Wnf+&��!P�T<���knPƖ�8b��:u��� ��EW����?a��1��%�(N�)���-_������x��j�9�Z:B�K}n"A�@�Q�O��.�a���{�f���̈́.��Z�"��	���oK�;��*`�������%ʤY��S�Z�Ԣ�T�>y�v�1���(V���hl�£^"ī�W�DB͂��k�����zv�	��H(%
���ds����1�A�k��n�FC0|��Uc*��֑MPgIV�`78��z��߀V��&�[�:�k�{��T�խW@���?�L�j9a�O�X��x{s�? �@3Q��-�C� �#�b/�_a̵�w�RFT1f��9wJ���q*�\1"ZQ�*Q$8 !��͂�	>��*�ϻ�0����S���KO�����8��oj6)3O�[���x���[Aԃl�_����3OA�F�0}���X�07����,��4�A�$z	��������T�KAc)�U�
q�d*��Nh ��R��vC0x��������c���m�l���	>%@wY�s0&��Mt	ψ�A>��UEj}&�)-��ѮTU/�a�x�(���w���^w�k���z��`�l�ɼ�����Y�Z�W
g;�j�|If&��|�A!��òhI�~�O�+�8jѢ���:���#&�����m�>�5�����,�[����A�xX��tٌ���NZ�j���j3��7��'I�"��G�7@�N��gdN��'��&8G�a� 4���C�rC�>�a�%;4�d��uu��j|ӌ�,y}�ܼЏ����W	�ю�Z���@�|�V�U�0l��:u�����L�\^�H��Jp���㭻�rԏ3dM�z{/�����,�������h�X�q��ZKI�H"��hE:r�9:%��d�)y#�1�
#y,�d�4����x%$C�No���+��L1gB����ކ)��T��yu��ucJI\��RћU8n�a������B������� ����Ƚz�6)K�T#׾s��d�$q T6YĔ\��5�aP�a�n��x��l�x�*�y� ����ڌ޽����J�Y��U���tE�oO�S��<�9Dz�1�{�b�̂��,��\~��*2/*ηI\�����)Ds*-،�\��N6��>yi�˧�,2�G֦������Sg��6�D1�������ƚ�*��>č{��-�.d��O ��'"i��GA�Źʀ��\	���(�s��YP1/ID'1�	�C��ISQ��GL�����?	�pX�L��z���(qY B+����KX&s��<��Jln��~��0�+-:���{��	S����v�\�F>�É+��#�j]c��/��f"cZ��?��=a�w�Z����s�+�-?H����t��/��k͢�����@����1�q�ݛ���/���^�.{��#	�F���ćAU$����]j���j\G�zŞ-�^�n�l�5�ӷ�RsP/�x�u�i�C�)r|,�p� P��twCץcJ��3$ח'ʦ�/�y"c�5ʔ�E�Evg�o@�)�S�@�=ы����P�T,�fr�<s�8I��pW�]|F|�t<��n����Ѐ�X}�<p���E?���NwJ{GE9�� H4�H�o �w:pDa�	Y8�X��$����E��E�~� a���>F���[hW��#��aNł\�	N��VG%G��B��em5cBh����f|v��z�!P�#�����Co,�$��G�́rN����C�@d�H��������2���������̦drF�0~\dTKl<#�b^U���+��C˦`zX9�inU̸��C 8P/��Lk�H����U�Ąn�DEY�m-������T�mn\g�&�'��}DX܅�,T
�0��I�c���-h$�x�?6G��#�k���M�,��;�������c�rS�%g��C��T�)���G婳�����Mu�Ckӄ '�GCh˷ }1�M���)6�%6������@�#�J �����몒�7h�� +�y �z�G�l�Q�|�Hi��<.�t�ђ�M�3p.X�o����UA��m�B�c#��r �	�D_�ޒ6�:�-9u���@s�ɑ�}t�:���vQ��H�=F��
~Ys'C�`ds�`��]T�C�q!�����^�Ys�
�(��Ӫ��4�Y�.=4&⫗3�$��򃱼)�x*�5���x��9�7���g#$C�$;����q�)$�d���?���j�/泌����WG4?;������Ϭu�t��8h��]m���Zvr���P���g��Oxs��5
v��I�kNu�m�`�X1�M^~J�ﻔ��u!MM3�A2,i��ϰ竒L�s(�X���(5 �P`q�����W�ݴʵ�&�8=t�����I���҂$��lt<s+T�H��ci�?A�Y��ȳ�a��u=���C������-#oŷ��hΎ��yJz50R�am F\Iv�0�����FC;�i+P�]��@��b�b�����jd�%��븨��,f Y,{ �>a�a@dmyv+F$�b	��r�>�C�Ə!W� �͹q>���Cy�
A/��y�'�2�Y������y��n\��3g'M;F�x���@��e���[1��Ty�\3����J#\�7¼B-��U�j��c@�u�Ռ����-+T��*�"�-�Y����������G�X�$��Z��޵�1,�);�HX�Ҭ�}�<'$:?{0-�T�4��@�Ւ��j�=��R�p?U��PE��o���,F�]�����1Hq�J��{��[�ń3C�~v�[֢�,!�a����x�<� ˊ�֠#�'�d��$ '�������2aƛ��j���O�J���Lok���119�|�<{#�IY��㞲��=6f�g�V����=�[��<� k�H5��li��R'l
������w��ı�j�~�]���+�N{N�]H��Z}=�)��67tzMP��d����㪪q���Z�U3x�ֱ���(��|��� ����>V+޴��"ya�>��9��+R����1��'��Ao$@$ˋC����S̪�la��ڶuSv�?�P42�@Qū�Dv����QZ����l`�xb�6p�A��.(�Ϥft�f���^�t���"�:�M@��^C.X��;;Fh����s0q�)Z���G�jR{aR�x�.���*\�h�7	7�F}U��<��5�)x`�|������'�?`��#�ca
H�����6��HIƐ �9�|l59�-MH�{C��m��"']C����3��n�x�Y�7r"<���j݉D6���-w�I�O�?�4���;8@y@�r��/�g�N�6�3@�H�X�܄��.C�0FS,wtg��y�~��BZ˴$���#�q����"��_�|����Fm��*�N�]�Z�� 8����m���������7B�s�^"�-.�6A�Ml�7N��F����Qj5�����%���x;DT�͝�'X:�j�gލE�J�lMy�ٰ't��s�Y|="��z��SxY�a�2~�
ɰ���L�)p��g���ok�h��"m3���3oB�]�|�'L%�:�zXj�G���\
�=��D����u��(B����G��>�MKuќ�&����Йm���W�sxBV3�Ҝc���]Fʯ-��)f�9V���K�3;b����pr���y�d��u�����5�kᇭ�J����s�r����D��p ���Ȋ�b�_�s�����T��e��z�v��l4W�/�%�����L�p�U�i�
志'z�PZ>Ǿ��F��ߩO�p\��x仗��[:��n��;�*mk,{K�G��,�Q�ڟ�n���mE�L9=�"-��rh-����_�U��6}��J��i9�4ѱVW�4�����f@$�ś��l���*� וfZ���h��m+���$���u�cc��ą�w��s��R�����Uh���,�	�/'\�n��U��TC�����ڕؕ�4��zBN�0﬽s�FQ�
�W�H�1�Ev��	����N�T��3x�-��Q�b,��FxW} �b���CkU^|�4�g��!�'�>�����Y�a-R`����%��ydh�5/3ư�)��Z���e��K%��P�o��n�F��v��KE�X9-F� }�:2�cx֐�+u�M�ñ��8\��/|�z^��ݨ@*iC�0O�SW l�@�Tj�LV_�^��X,���%ަ�{}����
�X�擬��&�؞���{ 3��dF��Q��~$Ǣ�	&�m暟��'IG7��`���r��f�Ֆ�WOˬ�S;�&���PČ'[ �mEN���ź����ţI8�ݒ�	�Jw�e���f�I�H�`��`K5����%B���E�f�^�jX����XPl!0�w:���m�(,�^"|���V ��������$�6��d��Y^8P�,����Ԋ�Q�����{��$R���_E��Ƽ�[ �'�J���pP�~�\.��p�A<�ߒ���EV�D�*5�|4�ܫ��	��[��<�f�*�y�.O`��w�Y��'��18�U+�p��u���c��p�T��R�HXm@���fz6TUx;H�&VDB{u�1�: �~8l}�g�1�A-���R�������K��kM9��8�Ӄ{��}W�WAD��ÉI�)ڢ��&̺G��g�0����`�QuT�r��0 �S5[\�hJ��Q�Nj���;�d	pB�lj4�ۻ_�w1kߋ������Q8GuTp2��6�~i\ �u�<����H2��� <ڿ29��ViC������%?���#.!�8�]ͺ�
5~ !�<�׾��m� yf/��8�� #)�t>���U���t|e'��r�  �I&�B[;igl�bg�%]#�����|���{Խk[{��Ybx��;}��@�PLI�C&�;����:�w9��%o"igޞr��jqp3��^�[Iv���Q�v�#0(e.���H��p����K�;��0�iW��T�r�_��mnг�IA�M|룙��M�>��"��"�"B���`�~�ڕbԱ�dg#QO����m�mQ�IP,D��V��r����{��E��i��<��?�X~H��c������'.�3��#��8������L�Q����C��S8�vR(&�fu�"��~���Q[˩c��^!�V�0���ϒso�Ȓ�A�������!-�q��E+�_F�l��hy5ҷDRe^����*�-j�-�MJN=�
-��4��G�Byf�����hA�p.�Js�/�`-y2��.p��%XOS^�]�6g����R'N �]T�*�?�:�l��a���qõdm��C��J�&�jhs����d�$�E 	�"1��_I�1���i�Uko�u@=��X��]� z��e�k�˩��A��@��ۇ�"�uf��Y���T��|ueQ�<�(�1Xuof�Vh��b8�g��<�,��y�p��O�p�L�O>@v+�l`WZt�p�<Ѻ�a8���r�`�V���b"��ݚg��(=Y��� �V�(ޕ�p^��]��h[W8���/���I�;A�l�;���X��LB�D�jP��8m���Ba��O���B��s��S���`�0���ث�v����b��Tз����F�Q֔
��iMz�e	����A ��Oz����l����d�XJ�p�
rwm0���cj4V����,td&b]pj�p�����\��V��m2�c��9Y?_󟸌�ȱ���0�2g9����($�3{_�:-�.y�
����k1%f.%�ES�ԭ��/��φ�8�at5�IV)��%ЙH(�V��6l{���҉��33@L�*W��h0��/�|�R'÷�\���(����Ys��M�a�R���#�ǻ��ğ6xy毞���'Q���TɚԌ�A���y;s���1mvc.�#��g�6i0�g��"��z��ة���_�9��St��.�{5J:���6TP�^e�x�W��%���Д�Z����㠇�n0�Y�?4��w�v��Z���:'�@�ȃ�|��	�.l���i���>���ƺ�f�!%�û�͇#R��IP�$3�v<�:\?��Qp�^�]�~9���y=����2�5�}7<D��ֺxsf����,��z�P�yA����eL(e�w3G��s��pf,	k(p`�]�
ˁ�u�?���>�*T>@��\1eP���yщZ��~}S3 �5��+�`��t�r��=��aa ��'�~�x��a��ݾ�3F��F15Ok��	RMP~^Px�D?�W;��L����M S���P�e�)[j�:����������{?'���WU�RiU��/�yN����j��tعG��"��_}��F��rD?��2ɕ:�8��^9��a�v<i1���VJ]�V�$wK�t��8������	?��H�@@�͑1��l��^�*4�떭c�r��k�� |f6�X�"g,���ޓ������������r$�����c��xwl��ehɡښ���,��?ՠ������kL5�������u	C�*��?���f�Z"U:!�Y���M���U�瘗��tc�)ɞ�U�y0�����n$����6���-C9���!j��<�h����:��E�v>}��U��3���|a_�"�ĻB������:������ߙ�¥��m�r�g���.XR�����|knp�N�-"���`�UP�y�
X �.hS���J<�x�֞����@~戬�!��3�� �q{f�\��K)ҲǟC�u���f�[��(!>a��Pci[Њ3�M�9f�AӲ�G&�r������VŪ��	%u{����;���Рƍ���*W��5��	0�H/�;}Z���XK�h�%V7㮟�D�LXҌr_rr�A�p�	����M�C�8t2�^>L�&�Nߖ�j�W�Tdc��Ǹ�W�-.L=>>D;�?����OʰGe׬�?��j�-��ف�t�2u���|=J>~/�~ٹ�At�Wh~��I��~��~/cB1!���\���fS� ����� �mA���>����hD`N�_"HƘ�@t兾�k�-_�� *���>E����h���|��=��*�	S=y���?��3��Õ�$��ᦟ����σՎ>tu�ϼi��&���Y�����$�!|�Ub��8��9|���&J�Ā�K��\�!+���"�^���	)
u{W�L�ڌ�`/>y^����Q��O.�uʆ�������v�?ٜ~�F~հ;/b�n6z��#�3�Nv�� �Ҙ�x_` ��,'�w<��=`�^�A��E���� ���_�V����Z�vD�즢z���h@�|�C:�D�Oҽ�dY�Z��+~�iq�� �[�$�������0��hIK�K��������sr��ĉ���9_P`q�վK��%�IB�!>}U�Z`$ʴX�ȉ'��!��넇��ik^���`���~��Ͼ�i�
�6������ H����]6OG��T��$�!��.��7ع_6��H�Y&�7��zpy1���<E��Z�ߜ�N�)��z�ݠ����j�e휱�(��wnυ�Z�d�ů�(B��q�����]������'��Olߛ�o���G�+Sz~�0�B��7��	�7좨Ä,Hm�I� N'���ka�G()�񄰝�����������!�"���W�b�$�c�A�=�<�tX��S^��<��_����R4E#E���Dm'$Muh|�&`$�"�Q�՝�p�Q�t�����q�&.D#����r�(Pb��&@�iNMr!��m>���2N`�8�����9���ث�&���&j(� z�Egu�Z0��f�A��0� �z�3��S��h̄�`���0~U��e"�J�5v�yWW:������1���:��i�T����(��![g>�����F���wf��=H�j����H��X�J�_�FLG�wr��C�$ܠj$�	|�Ҩ��k�ܥ�2��b�+i榏���'�`*x�\�#�H��wI���(���Ox��%��M�9V������ �
WW�&M���h,��I���0���5|��kc�Q7��2q�����f�F�M�3��������>_�U�;�H%�>k%(��Pu^�9�됥 �o�'��2Ӝ��\N��A�kH8EC����E��ZI1��׀ی0^�"w�Hހ}g��m^�� �t5��Ά��h"������FÅ�h���6S~�Iy�l��
nv��g�		[ �Ը�\�
2�;Ȇ�lw o�3�ȴ�i�[j���l�@��(.��	��Y�V�֗�Qn��A�0���h�S�zi£3�sLZI|�h,�Y�p\�3�& ��Q�1c�:�y��;�ǩ����0nb��i/�O�-b?E�H�������Z�z�Uq���Nri q��XDS�m���${�B�{+��}��#����V>�t�Әp7�ߌrC��#�V<+�]%���SLUR�4�2�2EօG^lp�&8�l��t���k�\��J�BϾП\<H��=����j6�}��M����%��1����<
�-8XJ��C"
KC��X�L�y��5��&\D����xC���*m+��E�����_
�}��9h5`�
���H�\��c�𰕥�
:b��������� *��!��OT>�;���T�S���-|�h��8�c��y1Ũ�1\��"Sq�}�g���r���Z@�뻣�/&�2)���l:4>�&�$���=��#��0��`@tH���e�І���R��.&���k8����?��F�%BFB�5b}�( ä/Z:��ɪ������h���t�ꂹ��YIQy.y��ċAY�1�\4"Yc�(�&��R ]��ʘ(Rw�m)�����oD;�~5;+N��T{+���T�2-˱¾}�9������npi�p]}B��SQ�w�h[�I�E�t7zn�c$�(�di�K��u33�ґ��hY58�؜�R�殑>8QV��^yQ؍A�F�W�&"[ʄ �p2gT�`Aߒ}�'b~����Oʇߝ)��;D-.��Vp<�����J�$���\o#����`�A>�������c8
�S�}�W[�$�)1�1�׽�d��zw�����U���}��OQZϖG������+w�Y�!s����8�uLB=
	���UF��bD�o�<��S</T7{�Y���?����i�H!����#�:���Lg�zM�����Z9	S�^d�v���4D�,|f)]����T=~g}a�d����v�����^�n":���׎@�@u.��Ac#c!\`��A��Z�R�m+�x���R�',M�i�:�o/DSĶ=��G=��"����țˣ�(�W]��w���_��`�������q��x8XT��L'�yRm�6�� b-<e'q��P����Y��Ȧ���n}��=&:�C�A��·�D�[�~�o-=Iv�d5/<*�@�sFE���j�������CjM1�ST�D� �f���m�u��02�2�p�xL[�$&n3ĺ ���/3�r*N�	��a�����`��?N*0=LatA��+�B���7E�^��I����=D-�.mW��T(:r�-��UQ6�~o����Mpyp�#�kր��c���9�=npk�+!n�L������jK{��}��S��{ґp��1�u��x�Ȑe����ܒ�3��%�w���*+�gJLΏ p�D�絝z͵aLpWpya$O�?�I���������I��Y�]�����]�v'w*�g�Wp��&9��I��h���Y-��*�J����XƤ�.� �).�59Ʋ���>"V�]/d�SU<���-:��ǘ�xZ僃����#��n��]%���p��6~�D.,H	��\�bv�L?��h�m��d|X�Ν.��V�G���A��
|,�R�\`�e �X!?:���.� W�_�calՀ~�~c��Ѥ���B�D� �Q�J!� .�V���2B�VhU�=k/��
�\�D]pRE��S��,n+�(YI�*�FS}f�I���I�l����	��u�cp���wid��FoQ9��I&����G1���ÞVMc5�,J�+�b>��3�7��@l��8Q�i1^5,ʮQ@l��G��P(p�&;Sͻ�oOB����7R�3�kW��qP|+�*����X�	tkP`⵪�!��*C<#�m����6o5�o,^eLL]�\e��ۧ΢����|n��b�83Ѿ A{Ğ>���	�A#�m�(���J�Ruے:_	MZsǙS�Ѵ@���J]y� �������C�/e0%�ܦ�@��=���Ծs>�.45�M���f�"�����"���c�_"�N�&�ꃁ�m[���b��*��(q��/I�Q��0���@�����.��O��o�?����r��?/�5��#�:��vo��1��m`J
��%\L��a،���R0Kv#A�AD��"�*��EXi��y��m�zfW����u��3�"L=	 ]�G-�x)�.�W�oK�V��� �8Q|�iݕS�B��=�G���
,�	�(�׍��� �@y �����xH,�f�GO�"�=��#���Ԃ9���fO���yl� ѨEj�Ĕ�E���f6 ����t�Ώ+|�20��TJY�m��s���a0�������J���_ϲH9S�f�R��݇ճ���K��r���M_T�[S,���)�� �5�i�,��yRѿW����a�~k�'�3}�����1p`f8î�=�FR�c����.�����z�?2mR�l�p�н)t.��4 u���5|����T=�rs�j�b's�/#�)���ζ:(ɣ����._ ��i��D�O�K��6�n�K<(`{Y}֒���?1�NPn�_^dÔǧ0�m�s;���.�߅���Q�!F${�RB�Y�=��uo�h]�\���IxRLlA�Va��Ju��pY��̨G7f����S���lU�#@��kB�V�*N��_6��"-�e�<[ �6Y/�f9jY����^��t�\��kZ�yf�ů�LVd�F�^������1�'��N��xe�a�qN�ʱ�;g�J7Zw52M��*F�46��Cw�{l��O����b͂��]���%��y�`^T��d��0նf��W6.��$N�5�5��	��e)���'���g&�D�`���W���}I3������,�"�B�����ｊ�����Ӏ���].aa����vm��Ō�����J�p��#ׯ�=k�|�{�c�}�-��ìu+<̽q(4��E�*r�V�O�O��C�|�۞WB�C���l��ĸo�!��2���`�i�yR�m���9�z�3B�,�Z�Dn�R����|e�K��7]Y����J�*�3�T�e�H��������N5x�o����8v��M������yyg~N֜ϗد�+�O��9�:ں��0hJ
Wpb��:�{��i�M+�k�MD���%!�[�_�OT*���t� I�j&ǀ�����e�,�YRW�o�j�N����߳ˣ���ɔ'sP����
-�ꝛv9����=��I$���{�r�ռ�|H���w��Jsai��p�R��n�Vj\5��� ���������QD��dIo�eG��E}�q���o�?���6�,���b�o��!��v�)�WN��F�����欬L\�����8�-�5�9;�p�v��H�>�W����߇�t��Sf�f�\~���	�:�f.�oCak{dE9A3
� mq/���((9�3n*������t@�/�tb �DQVkk���_�$��r����:���m��y9~��=����=@R���t�O�O6��Ș��x��2�f�� ����Ĝ�: �����8#(�9cho���ceo3Wue7!�'�4�'@pD��p��`Bo*���-x�n�,���R�a+_t8r�/@R��*����Ĕ/7�3�[p��J�l}��#�#&D�qO�Q��]�cFn]�$3oOq��-�Ӳ�e^1�=i|{�<�=e����J�����O�(�s����&��8��A�1�dR�����&��zX�-����$Z����&��~e3E��vCJA� oRWX7��d	V@�ȵ'�8�lG<z�ݜO�ﲎ|t��$��Gl�n�'̫�ǟ�����<؍:�#f	��n�m�flY���{<:��-�q�Q������z�18��S��~���V�% T��B��Y��Rץ|��g$���=��F���`gSѯ����#��iZC�gfB��-aJ�	����E�HIě�Z�l>���B�v�1*����_� #I�S�Ԉ8j�L����;����\�|�k�}����3�����nC��+\�fm*�5�L�Ju�{2LîD�X���O��V�r �~�>V���GJtq���)^��t�Z��H-,��
�Xq͈�G�{�iDV�� ,v�%d����{z [�6��T3V
��gR9�+�a`F`���&�'�w�����9X����$�3z�[w���}�����4H�%�\LcI���J��wN6v����9Ĺ�/C���5Nd�����?� ����h�D��]�����3o��:i,��&t���Ʌ����P0u��q5���g�/D�yQ���t��)`�
������_�i=�����tO^~]�j}�CJhktG�QP�1%e�<Qo� L�(r��JY!�C�:f�'��8#b�s�.�ԇ�3�vs�����=�x(If��j������/S��{N�gj��	��4����za�W�vNm���/�gG9��Qfi��J[�L>��ugL�|1��f���<Y���c4	F��S��X,
a_LS���v�?h�����HcK��P�/;�?;�3�1�Ӂ�+�q��P5�� W�b�����E+�ZO�-�����fG�$�-qy�2R�k�RQ� ���e�e{H(���\��lS���-A��5�����p��I������'��!!��+�%>-��#�0:�� �[K��:�v!8{�)�|���-J���YL��ٳ�� ��=���� \	�v"�[$�}i�U����K�g����'�J���15�~p��!�޶nQ�yU��ե�9���oq����٬��M)G��~&5���P�U0�-N���̏K����ʀ�@OE����vCX��5P��Nzn����*u,*�d'dte�dی[Y|�h�
�B%ܥ�����Wm&���ˤgB(��9�pT���3Z=�]S��<�����չ�җ��@�OC�����-84%%�X�&��a�Ԩ�ܪ��\O��������LV��R`ʯ��|i4�k����/�a��{�syq6��S�K�N0W�T��Jh�`-�]w�C�������.���@�w�6��:��틱�g��,������L���Nu���J���W�ɷɗ����e�Ƿ��1u��^+P�#R&[[i�H Ԫ(�
]s�Vm�| �n���e�W���T��,�O����9��o��ᚮ,�\��M��9'[���τ�{�/�Bf橋��w����Cc1@���M(V�~ο3e�KPf��^�I�M�L�����3��,�3(����O[z�XteC�k±�W��a�r�X��K/������}��͇�~�D⸳fhn���3��F���Ҋ�i�M�ΠE��κ��'�u$Z���[l�`����"�x����h���3�lݮ}li��WtorAz���6��� �c�5��1��m�tl��A�O*��f��9��0X~��Y��c���hqʽ��u��1���O�p@ձ�^�ej�Q��
gۜ��ӝ��M���'�q'�i"j	�ᱴ����ok��je6b׫���1�dgQ�I���CнYƚ�p��W"��}%���L7cSf����9Iz(�v;��b�[��T���8�,�o���~���y���P��{�`�D5�ɑ�8��#�B��/�	��/o�	y̎Y!H/����kL��G�m�nSqT���^|��P$/S�x���'L�A�fj+ר��^(C�ꑢ�����  u$�!=ɽOA�Z������q�e��ņ.�����%f.	>m�M<�}׈��)�=�9�.S;��j.��`zG�7Pb��/���9���D�2w&��~z�h:uFr'�o�fU�f����mЛ�D�~~���
WǄ\C@lؚ�66陙�Dʙ�c�wn��]a��>	:,�G�'\����-'�1�0�5���y��/D��O�4�U7{U��q���̏+>c���� {Ռ����B��P���a��@��5c�]"��v�A�Þ3S���Q8aگQ���>�ș���U&CYm�n���p�j��3�>�q��Sy�<�DyE���K�磂�l���"�K�C/��/����#Й�Z��Q�w~���h�|-^C(k�D]1�H� <��fG}b�ta�1�t9.�\�G���ҕ��>�@u�~�u��Ɉ��	S��\�G�O#|.�$/<��Y<N&F���D�?��K�BϚ�L��Q̱��I��W��Ï���w\W:�'��%\�fz�2�l��Ö5eb�=䂹Q�(�_���qѤC�H�S�f�-P�+Z���k~!W}�f�h�����_l�_lupή��͌��P���u�w����-V�����P�7Y���/w6�3}��9X��^��S1�A���E@9d��{ӳ.��f'��j��5y|v����=c�gG����6��s���~d*���	�=�g��63A��S�1�|�7��Wvb�cVR�J�H���oG]X����b.��哲��𕹫�_���6���=u'x������O!��WLf�]��x���i�u��NL?/��f�)s���~c���h���/�<��Q�k˹"0�ơ�Ύ�L�]����5�LĤ<��;�pNxD�Ql��^h�������a��{����!��9���f�_X-��f2����V���i+�)����dHn�(u����eT�N����V��[�u5�����S2�+��ls���1��<a?��xڬ[c�e7�CU��𑝨h�0g[��>�I#�b��%!��4����}�1F~u'�k�������0>����w�"�� Z�<�h8ֹ�� ���x���k$5n��A7��� ӣ(:���!����""�:G^�젵��dX�w�E��t��6]�$�,M��k��=�����@��G��@kr�W��������tC	2??��f�d�ƙ���As5[�Ҏ!:'��D���Jlc�d��V"�2õ4�/��j������C�����b�E{O�FثxE��_���0�A��F���F�/��ӷ�0�5!^(M-�4��:���c���P��VɾZ�r���`�3$���Hj����R���o���Hǘ$X������ 1��=:gx=ͦ`�u&��j$���g���DD���@ZKSwS+2��nY��hB1�	K�f=G1�!�(J�`�2x�C���nZ��2(Ѓ�t+��Hc~��99Ƿw7�^�i��nd��kP!s���9A\<�t-S��0]"c5��n�Q��������uMy�����~��:�{��PF���mx�9����f��pj��+��Ú]�;��h���*�BTE�KY�?g`sk�QB��{�]����@�"��6���OD�{<9fx0��ޫTo���l4"��L�yv�ny�tM"1���a���@���/����6j�u,��:����L�$�;tBcӥ(��a�˷�a�ͤ���k�RJ ���ϩ��n����2��Uq#�>)��{��n��ڎ��p�;�oQ��
�'lH,��+k���(Ok��R��j)J����%��nj�3V��>�+�5�r���A��׌{�#5A癨 ��թ6P�U������Y�6 �`�ubB�����(��w�_7IY�
:��g}d����tXI��Ih�b��3�#���+�2���u��K��˽2*#ͫ��"���2j9��k�BkD
�O���Q�|�rP_&�o���J�8����4�-*���Pp�A�e�K|�Ș(�t�MV��_V!�_K�ׂ�~'�*J�;l~����'������6����L�ך}5��&����p�#�~����^$Ќ����,����Ʌ�����f��S��W8�oB�K6RNuf�J"�E3������ph�F��n�,3Ƶ�z�C�KT��d���S��
����'ݏ�P�����3�~H7���w�:IwP��x��N3�c��y�$��|��[�)�pt���G���i���ث�as�B���s���e���:��f���;�@��������J�������f����{%��T�}�z9V���b�R��2��Vڿ1xj"��K����μpU�>KP�������$L�>��? �_�y󁲔VLι�<�����F�<#p�4���xu�qkQ8�'m+}f�nT;����5�L_(X9���ht ��)哔�Z=[_'Uu�U	&���!Ɛ���ܥd����ˮ�1I`��䜱ZeMo�q�R�BF�#R��&�%����m�'F��8��A���e��h�o�!Ȓc� �$Ј	7R�UuO�<3)OB�`v+{�XRsﮋEߨ�P0��gL1��Ӵ�.m^S����`d�s81~&��*w��>LX���Z���ە�3�h��~̗�u�b��M�P��$9�K��?)+ {�<�CKCn;��e����^1�b�)*�
\�#�<W��-��s���х����)��:v"A֢=��VL\�iD�eE��I��^w��]��Wu}ƽSV�e>\��Va<����U7=i�d�l k-���s�Ϥ�����W�J���
 �E�-[y���*tR�E�U�΀��   �������� ����V��o��g�    YZ