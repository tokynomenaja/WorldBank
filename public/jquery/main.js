
var inputLeft = document.getElementById("input-left");
var inputRight = document.getElementById("input-right");
var thumbLeft = document.querySelector(".slider > .thumb.left");
var thumbRight = document.querySelector(".slider > .thumb.right");
var range = document.querySelector(".slider > .range");
var values = [0,5,10,40,100,"+"];
var outputLeft = document.getElementById('output-left');
var outputRight = document.getElementById('output-right');

function setLeftValue(){
    var _this = inputLeft,
    min = parseInt(_this.min)
    max = parseInt(_this.max)

    _this.value = Math.min(parseInt(_this.value), parseInt(inputRight.value) - 1);
    var percent = ((_this.value - min)/(max-min)) * 100;
    thumbLeft.style.left = percent + "%";
    range.style.left = percent + "%";
}
setLeftValue();
function setRightValue(){
    var _this = inputRight,
    min = parseInt(_this.min)
    max = parseInt(_this.max)

    _this.value = Math.max(parseInt(_this.value), parseInt(inputLeft.value) + 1);
    var percent = ((_this.value - min)/(max-min)) * 100;
    thumbRight.style.right = (100 - percent) + "%";
    range.style.right = (100 - percent) + "%";
}
setRightValue();
inputLeft.addEventListener("input", setLeftValue);
inputRight.addEventListener("input", setRightValue);

// VALEUR DE LA RANGE
function valueLeft(){
    outputLeft.innerHTML = values[this.value];
};
function valueRight(){
    outputRight.innerHTML = values[this.value];
};
inputRight.addEventListener('input', valueRight)
inputLeft.addEventListener('input', valueLeft)

//FIN RANGE

var drop = document.getElementById("range-drop")
function showHide(){
    var content = document.getElementById("range-content")
        content.classList.toggle('toggleclass')
}
showHide()
drop.addEventListener("click", showHide)

// PERIODE 

var inputYearLeft = document.getElementById("input-year-left");
var inputYearRight = document.getElementById("input-year-right");
var thumbYearLeft = document.querySelector(".y-slider > .y-thumb.y-left");
var thumbYearRight = document.querySelector(".y-slider > .y-thumb.y-right");
var rangeYear = document.querySelector(".y-slider > .y-range");

function setLeftYearValue(){
    var _this = inputYearLeft,
    min = parseInt(_this.min)
    max = parseInt(_this.max)

    _this.value = Math.min(parseInt(_this.value), parseInt(inputYearRight.value) - 1);
    var percent = ((_this.value - min)/(max-min)) * 100;
    thumbYearLeft.style.left = percent + "%";
    rangeYear.style.left = percent + "%";
}
setLeftValue();
function setRightYearValue(){
    var _this = inputYearRight,
    min = parseInt(_this.min)
    max = parseInt(_this.max)

    _this.value = Math.max(parseInt(_this.value), parseInt(inputYearLeft.value) + 1);
    var percent = ((_this.value - min)/(max-min)) * 100;
    thumbYearRight.style.right = (100 - percent) + "%";
    rangeYear.style.right = (100 - percent) + "%";
}
setRightValue();
inputYearLeft.addEventListener("input", setLeftYearValue);
inputYearRight.addEventListener("input", setRightYearValue);

var dropYear = document.getElementById("year-drop")
function showHideYear(){
    var content = document.getElementById("range-year-content")
        content.classList.toggle('toggleclass')
}
showHideYear()
dropYear.addEventListener("click", showHideYear)

// FIN PERIODE

var ptf = document.getElementById("ptf-listener")
function showPtfCheckboxes(){
    var ptfContent = document.getElementById("ptf-check")
        ptfContent.classList.toggle('toggleclass')
}
showPtfCheckboxes()
ptf.addEventListener("click", showPtfCheckboxes)

var appui = document.getElementById("appui-listener")
function showAppuiCheckboxes(){
    var appuiContent = document.getElementById("appui-check")
        appuiContent.classList.toggle('toggleclass')
}
showAppuiCheckboxes()
appui.addEventListener("click", showAppuiCheckboxes)

var sector = document.getElementById("check");
function showCheckboxes(){
    var contentSector = document.getElementById("scontent")
        contentSector.classList.toggle('toggleclass')
}
showCheckboxes()
sector.addEventListener("click", showCheckboxes)

var filiere = document.getElementById("filiere-listener")
function showFiliereCheckboxes(){
    var filiereContent = document.getElementById("filiere-check")
        filiereContent.classList.toggle('toggleclass')
}
showFiliereCheckboxes()
filiere.addEventListener("click", showFiliereCheckboxes)

var zone = document.getElementById("zone-listener")
function showZoneCheckboxes(){
    var zoneContent = document.getElementById("zone-check")
        zoneContent.classList.toggle('toggleclass')
}
showZoneCheckboxes()
zone.addEventListener("click", showZoneCheckboxes)

//REMOVE DROP

// var reset = ['ptf-check','scontent', 'appui-check', 'filiere-check"', 'zone-check', 'range-year-content', 'range-content']
// function closed(event){
//     console.log(event.target)
//     for (var i = 0; i < reset.length; i++) {
//         var tagId = document.getElementById(reset[i])
//         console.log(tagId)
//         if ( event.target =! tagId && event.target.parentNode != tagId) {
//             tagId.classList.add('toggleclass')
//         }
//     }
// }
// window.addEventListener('click', closed)


// function exPle(event){
//     var test = document.getElementById('zone-check')

// }
// window.addEventListener('click', exPle)

