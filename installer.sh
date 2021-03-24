# macOS CLI Speedtest installer v1
# https://github.com/zensudo/macOS_CLI_Speedtest

# create folders
mkdir /usr/local/Cellar/speedtest/;
mkdir /usr/local/Cellar/speedtest/1.0.0/;
mkdir /usr/local/Cellar/speedtest/1.0.0/bin/;
mkdir /usr/local/Cellar/speedtest/1.0.0/share/;
mkdir /usr/local/Cellar/speedtest/1.0.0/share/man/;
mkdir /usr/local/Cellar/speedtest/1.0.0/share/man/man5/;

# move files to destination folder
cp ./speedtest /usr/local/Cellar/speedtest/1.0.0/bin/;
cp ./speedtest.5 /usr/local/Cellar/speedtest/1.0.0/share/man/man5/;

# create symlink alias folder
ln -s /usr/local/Cellar/speedtest /usr/local/opt/speedtest;
ln -s /usr/local/Cellar/speedtest/1.0.0/bin/speedtest /usr/local/bin/speedtest;

# remove this package
rm ./README.md;
rm ./speedtest;
rm ./speedtest.5;
rm ./installer.sh
cd ..;
rmdir macOS_CLI_Speedtest-main


exit 0;
