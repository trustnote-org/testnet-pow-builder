pm2 stop all
pm2 delete all

pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode1/start.js --no-autorestart --name supernode1
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode2/start.js --no-autorestart --name supernode2
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode3/start.js --no-autorestart --name supernode3
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode4/start.js --no-autorestart --name supernode4
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode5/start.js --no-autorestart --name supernode5
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode6/start.js --no-autorestart --name supernode6
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode7/start.js --no-autorestart --name supernode7
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode8/start.js --no-autorestart --name supernode8
pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-supernode9/start.js --no-autorestart --name supernode9

pm2 start ~/mainchain-pow/testnet-pow-builder/trustnote-pow-explorer1/explorer.js  --no-autorestart --name explorer1
