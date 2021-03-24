# macOS CLI Speedtest installer v1
# https://github.com/zensudo/macOS_CLI_Speedtest

# create folders
mkdir /usr/local/Cellar/speedtest/;
mkdir /usr/local/Cellar/speedtest/1.0.0/;
mkdir /usr/local/Cellar/speedtest/1.0.0/bin/;

# move files to destination folder
cp ./content/speedtest /usr/local/Cellar/speedtest/1.0.0/bin/;

# create symlink alias folder
ln -s /usr/local/Cellar/speedtest /usr/local/opt/speedtest;
ln -s /usr/local/Cellar/speedtest/1.0.0/bin/speedtest /usr/local/bin/speedtest;

# remove this package
rm ./README.md;
rm ./installer.sh;
rm -r ./content/;
cd ..;
rmdir macOS_CLI_Speedtest-main;
rm macOS_CLI_Speedtest-main.zip;

printf "##########\n
THE INSTALLATION HAS FINISHED!\n
Start your first test with the command \'speedtest\' or get\nfurther informations wit \'speedtest --help\'\n
##########"
exit 0;
