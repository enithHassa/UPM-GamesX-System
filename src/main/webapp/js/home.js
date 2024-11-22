
//image container js

function loadData(data) {
    if (data=="nextButton") {
        document.getElementById("im1").src="images/s-img5.png";
        document.getElementById("im2").src="images/s-img6.png";
        document.getElementById("im3").src="images/s-img7.png";
        document.getElementById("im4").src="images/s-img8.png";
    }

    else if (data=="prevButton") {
        document.getElementById("im1").src="images/s-img1.png";
        document.getElementById("im2").src="images/s-img2.png";
        document.getElementById("im3").src="images/s-img3.png";
        document.getElementById("im4").src="images/s-img4.png";
    }
}


//image slider js

var indexValue = 0;

function slideShow() {
    setTimeout(slideShow, 2500);
    var x;
    const images = document.getElementsByClassName("slide-image");
    for (x = 0; x < images.length; x++) {
        images[x].style.display = "none";
    }
    indexValue++;
    if (indexValue > images.length) {
        indexValue = 1;
    }
    images[indexValue - 1].style.display = "block";
}
slideShow();


