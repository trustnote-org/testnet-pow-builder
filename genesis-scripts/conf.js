/*jslint node: true */
"use strict";

//exports.port = 6655;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;
exports.database = {};
//exports.storage = 'mysql';
exports.WS_PROTOCOL = 'ws://';
exports.hub = 'test.mainchain.pow.trustnote.org:9191';
exports.KEYS_FILENAME = 'keys.json';

exports.storage = 'sqlite';
exports.deviceName = 'Headless';
exports.permanent_pairing_secret = 'randomstring';
exports.control_addresses = ['DEVICE ALLOWED TO CHAT'];
exports.payout_address = 'WHERE THE MONEY CAN BE SENT TO';
exports.KEYS_FILENAME = 'keys.json';

// exports.database.host = 'mysql.cx9e4ce1qjjs.ap-southeast-2.rds.amazonaws.com';
// exports.database.password = 'trustnote';
// where logs are written to (absolute path).  Default is log.txt in app data directory
//exports.LOG_FILENAME = '/dev/null';

// this is for runnining RPC service only, see play/rpc_service.js
exports.rpcInterface = 'test.mainchain.pow.trustnote.org';
exports.rpcPort = '6552';

// witness configuration

exports.admin_email='witness';
exports.from_email='witness';

console.log('finished headless conf');
