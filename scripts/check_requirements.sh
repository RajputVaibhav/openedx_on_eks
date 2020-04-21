module=$1
$module --version;err=$?
if [ $err == 0 ]; then
    echo "$module is installed. Proceeding..."
else
    $module version;err=$?
    if [ $err == 0 ]; then
        echo "$module is installed. Proceeding..."
    else
        echo "$module not installed. Please install the required module"
        exit 1
    fi
fi