wget https://raw.githubusercontent.com/Vinai/compressed-magento-sample-data/1.9.1.0/compressed-no-mp3-magento-sample-data-1.9.1.0.tgz
tar -xzf compressed-no-mp3-magento-sample-data-1.9.1.0.tgz
echo "copy media and skin files into magento dir"
cp -R ./magento-sample-data-1.9.1.0/media ./build/
cp -R ./magento-sample-data-1.9.1.0/skin ./build/

echo "now import sql file"
