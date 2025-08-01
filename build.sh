
if [ ! -d buildtools ]; then
	mkdir buildtools
	cd buildtools
	wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
	java -jar BuildTools.jar --rev latest
	cd ..
fi

[ ! -d build ] && mkdir build

javac -d build -classpath buildtools/Spigot/Spigot-API/target/spigot-api-*-shaded.jar src/ExamplePlugin.java
cd build
jar cf ExamplePlugin.jar . ../plugin.yml

