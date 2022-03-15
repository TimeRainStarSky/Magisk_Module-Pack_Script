R="[1;31m";G="[1;32m";Y="[1;33m";C="[1;36m";B="[1;m";O="[m";abort(){ echo "
$R! $@$O";exit 1;};echo "$B*************************
$R Shell$Y Script$G Pack$C Tools$O
*************************
    ${G}作者：${C}时雨🌌星空$O";[ -d "${1}Pack" ]&&[ -f "${1}Pack.sh" ]&&INPUT="$(realpath "$1")"||abort "输入文件不存在";[ -n "$2" ]&&OUTPUT="$(realpath "$2")"&&DIROUTPUT="$(dirname "$OUTPUT")"&&BASEOUTPUT="$(basename "$OUTPUT")"||abort "输出文件不存在";command -v shc>/dev/null||abort "shc编译器不存在";echo "
$Y- 正在使用shc编译脚本$O
";shc -vrf "${1}Pack.sh"&&shc -vrf "${1}Control.sh"||abort "脚本编译失败";echo "
$Y- 正在打包为自释放脚本$O
";echo '#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack/'"${BASEOUTPUT}Pack.sh"'.x";abort(){ rm -rf "$EXEC";echo "'"$R"'! $@'"$O"'";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "'"$Y"'- 正在释放脚本'"$O"'";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "${INPUT}Pack.sh.x"|head -c 32)"'" ];then echo "'"$G"'- 脚本校验成功，开始执行'"$O"'";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符'>"${OUTPUT}Pack.sh"||abort "脚本打包失败";xz -9ce "${INPUT}Pack.sh.x">>"${OUTPUT}Pack.sh"||abort "脚本打包失败";echo '#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="$PATH:/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox";FILE="$(realpath "$0")";EXEC="/data/adb/TimeRainStarSky/MMPack/'"${BASEOUTPUT}Control.sh"'.x";abort(){ rm -rf "$EXEC";echo "'"$R"'! $@'"$O"'";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "'"$Y"'- 正在释放脚本'"$O"'";mkdir -p "$(dirname "$EXEC")";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat>"$EXEC"||abort "脚本释放失败";chmod 555 "$EXEC"||abort "脚本权限修改失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "${INPUT}Control.sh.x"|head -c 32)"'" ];then echo "'"$G"'- 脚本校验成功，开始执行'"$O"'";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符'>"${OUTPUT}Control.sh"||abort "脚本打包失败";xz -9ce "${INPUT}Control.sh.x">>"${OUTPUT}Control.sh"||abort "脚本打包失败";echo '#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox:$PATH";FILE="$(realpath "$0")";DIR="/data/adb/TimeRainStarSky/MMPack";EXEC="$DIR/'"${BASEOUTPUT}Pack.sh"'.x";abort(){ rm -rf "$DIR";echo "'"$R"'! $@'"$O"'";exit 1;};cd "$(dirname "$FILE")"||abort "切换到脚本目录失败";output_file(){ echo "'"$Y"'- 正在释放脚本'"$O"'";[ -d "$DIR" ]&&rm -rf "$DIR";mkdir -p "$DIR";tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$FILE"|head -n 1)" "$FILE"|xzcat|tar -xvC "$DIR"||abort "脚本释放失败";OUTPUT=1;};check_exec(){ if [ -x "$EXEC" ]&&[ "$(md5sum "$EXEC"|head -c 32)" = "'"$(md5sum "${INPUT}Pack.sh.x"|head -c 32)"'" ];then echo "'"$G"'- 脚本校验成功，开始执行'"$O"'";PATH="$DIR:$PATH";export LD_LIBRARY_PATH="$DIR";"$EXEC" "$@"||abort "脚本执行失败";elif [ "$OUTPUT" != 1 ];then output_file;check_exec "$@";else abort "脚本释放失败";fi;};check_exec "$@";exit;定位符'>"${OUTPUT}Pack_Standalone.sh"||abort "脚本打包失败";mv -f "${INPUT}Pack.sh.x" "${INPUT}Pack";cd "${INPUT}Pack";tar -cvJ *>>"${OUTPUT}Pack_Standalone.sh"||abort "脚本打包失败";cd "$DIROUTPUT";echo '#脚本已经过编译，需要源代码请联系作者：时雨🌌星空
if [ "$(id -u)" != 0 ];then echo "'"$Y"'- 正在获取root权限'"$O"'";su -c "sh \"$0\" \"$1\" \"$2\" \"$3\"";exit;fi;PATH="/system/bin:/data/adb/magisk:$(magisk --path)/.magisk/busybox:$PATH";DIR="$(dirname "$0")";abort(){ echo "'"$R"'! $@'"$O"'";exit 1;};echo "'"$Y"'- 正在释放脚本'"$O"'";for i in "'"${BASEOUTPUT}Pack.sh"'" "'"${BASEOUTPUT}Pack_Standalone.sh"'" "'"${BASEOUTPUT}Control.sh"'";do if [ -f "$DIR/$i" ];then mv "$DIR/$i" "$DIR/$i.bak"||abort "重命名原脚本失败";fi;done;tail -n "+$(awk "/$(echo "5a6a5L2N56ym"|base64 -d)/{print NR+1}" "$0"|head -n 1)" "$0"|xzcat|tar -xvC "$DIR"||abort "脚本释放失败";rm -rf "$0"||abort "删除释放脚本失败";echo "'"$G"'- 脚本释放完成'"$O"'";exit;定位符'>"${OUTPUT}Extract.sh"||abort "脚本打包失败";tar -cvJ "${BASEOUTPUT}Pack.sh" "${BASEOUTPUT}Pack_Standalone.sh" "${BASEOUTPUT}Control.sh">>"${OUTPUT}Extract.sh";echo -n "$(sed -n 2p "${INPUT}Pack.sh"|tr "[A-Z]" "[a-z]"|tr ";" "\n")
md5=$(md5sum "${OUTPUT}Extract.sh"|head -c 32)">"$DIROUTPUT/version"||abort "脚本版本文件生成失败";echo;cat "$DIROUTPUT/version"||abort "脚本版本文件生成失败";echo "

$G- 打包完成$O"