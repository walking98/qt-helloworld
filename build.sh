cd /app/SRC
# apt install free
#tar xvf lib.tar -C /usr
qmake HelloWorldGui.pro
make
mkdir -p /app/bin/
ls HelloWorldGui 
cp HelloWorldGui /app/bin/runApp
chmod +x /app/bin/runApp
