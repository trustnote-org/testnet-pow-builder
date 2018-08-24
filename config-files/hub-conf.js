/*jslint node: true */
"use strict";

exports.clientName = 'TTT';
exports.minClientVersion = '1.1.0';
exports.WS_PROTOCOL = 'ws://';
// https://console.developers.google.com
exports.pushApiProjectNumber = 0;
exports.pushApiKey = '';

exports.port = 6616;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = true;
exports.bSaveJointJson = true;
exports.bLight = false;

// this is used by wallet vendor only, to redirect bug reports to developers' email
exports.bug_sink_email = 'admin@example.org';
exports.bugs_from_email = 'bugs@example.org';

exports.HEARTBEAT_TIMEOUT = 300*1000;

exports.storage = 'sqlite';


exports.initial_witnesses = [
    "JNA6YWLKFQG7PFF6F32KTXBUAHRAFSET",
    "4T7YVRUWMVAJIBSWCP35C7OGCX33SAYO",
    "A4BRUVOW2LSLH6LVQ3TWFOCAM6JPFWOK",
    "BHYNQIMH6KGLVQALJ5AM6EM7RTDDGF3P",
    "D55F4JL2R3S4UHX4UXVFGOWTZPZR2YXO",
    "JKATXQDYSE5TGRRZG6QUJS2GVYLCAPHM",
    "TLLGQTKOT7ZINCOSBJG64LKE3ZTD3EDK",
    "UK7TAQI27IV63N7Q6UB7BSE6OP2B25Z2",
    "ZW35QKXIKK47A7HW3YRIV6TU3DYDTIVR"
];

exports.initial_peers = [
];

console.log('finished hub conf');
