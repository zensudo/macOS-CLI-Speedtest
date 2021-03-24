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
cp ./content/speedtest /usr/local/Cellar/speedtest/1.0.0/bin/;
cp ./content/speedtest.5 /usr/local/Cellar/speedtest/1.0.0/share/man/man5/;

# create symlink alias folder
ln -s /usr/local/Cellar/speedtest /usr/local/opt/speedtest;
ln -s /usr/local/Cellar/speedtest/1.0.0/bin/speedtest /usr/local/bin/speedtest;

# remove this package
rm ./README.md;
rm ./installer.sh;
rm -r ./content/;
cd ..;
rmdir macOS_CLI_Speedtest-main;


exit 0;
