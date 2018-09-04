for index in {1..9}
    do
        git -C "trustnote-pow-supernode$index" pull
    done

git -C trustnote-pow-explorer pull
git -C trustnote-pow-explorer1 pull

git -C trustnote-pow-headless pull
git -C trustnote-pow-headless10 pull


git -C backupconfigs/trustnote-pow-common/ pull

rm -rf trustnote-pow-supernode/node_modules/trustnote-pow-common
rsync -a --progress backupconfigs/trustnote-pow-common trustnote-pow-supernode/node_modules/ --exclude .git --exclude node_modules

#rsync -av --progress sourcefolder /destinationfolder --exclude thefoldertoexclude
 for index in {1..9}
    do
        echo "Refresh trustnote-pow-supernode$index's trustnote-pow-common."
        rm -rf trustnote-pow-supernode$index/node_modules/trustnote-pow-common
        cp -rf trustnote-pow-supernode/node_modules/trustnote-pow-common trustnote-pow-supernode$index/node_modules/
    done


rm -rf trustnote-pow-explorer/node_modules/trustnote-pow-common
rsync -a --progress backupconfigs/trustnote-pow-common trustnote-pow-explorer/node_modules/ --exclude .git --exclude node_modules

echo "Refresh trustnote-pow-explorer1's trustnote-pow-common."
rm -rf trustnote-pow-explorer1/node_modules/trustnote-pow-common
cp -rf trustnote-pow-explorer/node_modules/trustnote-pow-common trustnote-pow-explorer1/node_modules/


rm -rf trustnote-pow-headless/node_modules/trustnote-pow-common
rsync -a --progress backupconfigs/trustnote-pow-common trustnote-pow-headless/node_modules/ --exclude .git --exclude node_modules

echo "Refresh trustnote-pow-headless10's trustnote-pow-common."
rm -rf trustnote-pow-headless10/node_modules/trustnote-pow-common
cp -rf trustnote-pow-headless/node_modules/trustnote-pow-common trustnote-pow-headless10/node_modules/
