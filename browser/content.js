let links = document.body.querySelectorAll(".storylink");
let allStories = [];
for (let link of links) {
    allStories.push({ "title": link.innerHTML, "url": link.getAttribute("href") });
    link.setAttribute("target", "_blank");
}
for (let link of links) {
    link.addEventListener("click", (e) => {
        let message = {};
        message.all = allStories;
        message.clicked = { "title": e.target.innerHTML, "url": e.target.getAttribute("href") };
        browser.runtime.sendMessage(message);
    });
}