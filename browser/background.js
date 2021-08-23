var port = browser.runtime.connectNative("hnstats");

browser.runtime.onMessage.addListener((message) => { port.postMessage(message); });

// port.onMessage.addListener((response) => {
//     console.log("Received: " + response);
// });