/*jslint node: true */
"use strict";

exports.port = null;
//exports.myUrl = 'wss://mydomain.com/bb';
exports.bServeAsHub = false;
exports.bLight = false;

exports.webPort = 8080;

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


/*'wss://trustnote.org/tg' */
exports.initial_peers = [
	'ws://dev.mainchain.pow.trustnote.org:6616'
];

console.log('finished explorer conf');
