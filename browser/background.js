var port = browser.runtime.connectNative("hnstats");

browser.runtime.onMessage.addListener((message) => {
    port.postMessage(message);
});