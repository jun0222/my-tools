// 指定したタグ名のテキストを取得
var tagName = "h2";
var elements = document.getElementsByTagName(tagName);

// 指定したクラス名のテキストを取得
// var className = "content";
// var elements = document.getElementsByClassName(className);

// elementsの中身をすべて取得
let text = "";
for (let i = 0; i < elements.length; i++) {
    text += elements[i].innerText+"\n";
}

// textをクリップボードにコピー
copyTextToClipboard(text);
function copyTextToClipboard (text) {
    var copyFrom = document.createElement("textarea");
    copyFrom.textContent = text;
    var bodyElm = document.getElementsByTagName("body")[0];
    bodyElm.appendChild(copyFrom);
    copyFrom.select();
    var retVal = document.execCommand('copy');
    bodyElm.removeChild(copyFrom);
    return retVal;
}