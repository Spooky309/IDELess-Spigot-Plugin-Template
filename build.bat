@echo off
if exist .\build (
	rmdir /s /q build
)
mkdir build
if not exist .\buildtools\spigot.jar (
	echo spigot not compiled, running buildtools...
	if not exist .\buildtools\buildtools.jar (
		echo error! make sure you have the buildtools.jar in the buildtools directory
		exit
	)
	pushd buildtools
	java -jar buildtools.jar --rev 1.16.1
	move spigot*.jar spigot.jar 
	popd
)
echo building
pushd build
javac -d . -classpath ..\buildtools\spigot.jar ..\src\ExamplePlugin.java
jar cf ExamplePlugin.jar . ..\plugin.yml
echo done
popd