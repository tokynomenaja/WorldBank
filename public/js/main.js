
var inputLeft = document.getElementById("input-left");
var inputRight = document.getElementById("input-right");
var thumbLeft = document.querySelector(".slider > .thumb.left");
var thumbRight = document.querySelector(".slider > .thumb.right");
var range = document.querySelector(".slider > .range");
var values = [0,5,10,40,100,"+"];
var outputLeft = document.getElementById('outputleft');
var outputRight = document.getElementById('outputright');
var ir = document.getElementById('ir');
var il = document.getElementById('il');
var showMontant = document.getElementById('showMontant');

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

//VALEUR DE LA RANGE
function valueLeft(){
    if (outputRight.value == "" || outputRight.value == "+") {
        outputLeft.innerHTML = values[this.value];
        if (outputLeft.value == "0") {
        outputLeft.innerHTML = values[this.value];

        showMontant.innerHTML = "montant en millions de USD";
        }
        else {
        outputLeft.innerHTML = values[this.value];
        showMontant.innerHTML = "plus de " + outputLeft.value + " millions d'usd";
        ir.value = "max";
        il.value = outputleft.value;
        }
    }
    else{
        outputLeft.innerHTML = values[this.value];
        if (outputLeft.value == "0") {
        outputLeft.innerHTML = values[this.value];

            showMontant.innerHTML = "moins de " + outputRight.value + " millions d'usd";
            il.value = 0;
            ir.value = outputRight.value;
        }
        else{
            outputLeft.innerHTML = values[this.value];
            otl.innerHTML = " et "
            il.value = values[this.value];
            showMontant.innerHTML = "entre" + " " + outputLeft.value + " " + "millions et " + " " + outputRight.value + " " + "millions d'USD";
            ir.value = outputRight.value;
        }
    }
};
function valueRight(){
    if (outputLeft.value == "" || outputLeft.value == "0") {
        outputRight.innerHTML = values[this.value];
        if (outputRight.value == "+") {
            outputRight.innerHTML = values[this.value];
        showMontant.innerHTML = "montant en millions de USD";
        }
        else {
            outputRight.innerHTML = values[this.value];
        showMontant.innerHTML = "moins de " + outputRight.value + " millions d'usd";
        il.value = 0;
        ir.value = outputRight.value;
        }
    }
    else{
        outputRight.innerHTML = values[this.value];
        if (outputRight.value == "+") {
            outputRight.innerHTML = values[this.value];
        showMontant.innerHTML = "plus de " + outputLeft.value+ " millions d'usd";
        il.value = outputLeft.value;
        ir.value = "max";
        }
        else {
            outputRight.innerHTML = values[this.value];
            otl.innerHTML = " et "
            ir.value = values[this.value];
            showMontant.innerHTML = "entre" + " " + outputLeft.value + " " + "millions et " + " " + outputRight.value + " " + "millions d'USD";
            il.value = outputLeft.value;
        }
    }
};

inputRight.addEventListener('input', valueRight)
inputLeft.addEventListener('input', valueLeft)

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

// FIN PERIODE



