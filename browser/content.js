function logStory(elem, clicked) {
    let message = { "url": elem.getAttribute("href"), "title": elem.innerHTML, "clicked": clicked };
    browser.runtime.sendMessage(message);
}

let links = document.body.querySelectorAll(".storylink");
for (let link of links) {
    logStory(link, false);
    link.addEventListener("click", (e) => { logStory(e.target, true); });
    link.setAttribute("target", "_blank");
}