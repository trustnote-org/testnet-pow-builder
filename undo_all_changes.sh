
for index in {1..9}
do
    git -C "trustnote-pow-supernode$index" checkout .
    git -C "trustnote-pow-supernode$index" pull
done

git -C trustnote-pow-supernode checkout .
git -C trustnote-pow-supernode pull

git -C trustnote-pow-headless checkout .
git -C trustnote-pow-headless pull

git -C trustnote-pow-headless10 checkout .
git -C trustnote-pow-headless10 pull

git -C trustnote-pow-explorer checkout .
git -C trustnote-pow-explorer pull

git -C trustnote-pow-explorer1 checkout .
git -C trustnote-pow-explorer1 pull
