
while true

do 

for subject in topstories politics offbeat sports-soccer canada-britishcolumbia

do
now=$(date +"%Y-%m-%d-%H-%M")

curl http://www.cbc.ca/cmlink/rss-$subject > $subject-raw.txt

grep \<title\> $subject-raw.txt | cut -c 23- | rev | cut -c 12- | rev | tail -n +3 > $subject.txt

rm $subject-raw.txt
done

echo "Retrieved data at $now ..."
sleep 60

done