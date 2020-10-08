echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/base system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/meizu/m5note/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
