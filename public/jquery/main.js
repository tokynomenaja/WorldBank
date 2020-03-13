
//Montant filtre

var inputLeft = document.getElementById("input-left");
var inputRight = document.getElementById("input-right");
var thumbLeft = document.querySelector(".slider > .thumb.left");
var thumbRight = document.querySelector(".slider > .thumb.right");
var range = document.querySelector(".slider > .range");
var values = [0,5,10,40,100,"+"];
var outputLeft = document.getElementById('output-left');
var outputRight = document.getElementById('output-right');
var ir = document.getElementById('ir');
var il = document.getElementById('il');

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
    il.value = values[this.value];
};
function valueRight(){
    outputRight.innerHTML = values[this.value];
    ir.value = values[this.value];
};
inputRight.addEventListener('input', valueRight)
inputLeft.addEventListener('input', valueLeft)



// periode filtre
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


//show hide
var checkArray = ["ptf-check","scontent","appui-check","filiere-check","zone-check","range-content","range-year-content"]
var idArray = ["ptf-listener","check","appui-listener","filiere-listener","zone-listener","range-drop","year-drop"]
var compteurSecteur = document.getElementById("compteurSecteur").textContent
var compteurSecteurNum = parseInt(compteurSecteur)
for (var i = 1; i <= compteurSecteurNum; i++) {

    var a = document.getElementById("secteur" + i.toString())
    console.log("======================================")
    console.log(a.id)
}

    window.addEventListener('click', function(e){
        for (var i = 0; i < idArray.length; i++) {
            var ecouteur = document.getElementById(idArray[i])
            var declencheur = document.getElementById(checkArray[i])
            if (e.target.id === ecouteur.id) {
                declencheur.classList.remove('toggleclass')
            }else if (e.target != declencheur.id ) {
                declencheur.classList.add('toggleclass')
            }
        }
    })
