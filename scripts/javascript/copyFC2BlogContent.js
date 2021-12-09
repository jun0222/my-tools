function copyTextToClipboard(textVal){
    var copyFrom = document.createElement("textarea");
    copyFrom.textContent = textVal;
 
    var bodyElm = document.getElementsByTagName("body")[0];
    bodyElm.appendChild(copyFrom);
    copyFrom.select();

    var retVal = document.execCommand('copy');
    bodyElm.removeChild(copyFrom);

    return retVal;
}

txt = document.getElementsByClassName('main_txt')[0].innerText;

copyTextToClipboard(txt);