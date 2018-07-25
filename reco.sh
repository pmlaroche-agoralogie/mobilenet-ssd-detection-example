cd /home/ftptensor/images_1000_tirage_aleatoire_reduit/
for f in *
do
cp /home/ftptensor/images_1000_tirage_aleatoire_reduit/$f /home/workspace/models/research/object_detection/test_images/image1.jpg
cd /home/workspace/models/research/object_detection
python3 reco1000.py 
echo $f
cp /home/workspace/models/research/object_detection/test_images/image1.jpg_detect.jpg /var/www/html/$f
done
