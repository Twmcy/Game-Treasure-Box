if [ "$(id -u)" -eq 0 ]; then
sh $Pages/Home.xml
else
sh $Pages/HomeNoRoot.xml
fi