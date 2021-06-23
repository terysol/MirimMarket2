// 사용자 이미지 미리보기
function addIMG(event) {		
    var reader = new FileReader(); 
    reader.onload = function(event) { 
        var img = document.getElementById("userIMG"); 
        img.setAttribute("src", event.target.result); 
        img.setAttribute("style", "border: 2px solid white;");
    }; 
    var inputfile = event.target.files[0];
    reader.readAsDataURL(inputfile); 
}

// 슬라이드
function plusSlides(n, order) {
    showSlides(slideIndex += n, order);
}

function currentSlide(n) {
    showSlides(slideIndex = n, 1);
    showSlides(slideIndex = n, 2);
}

function showSlides(n, order) {
    var i;
    var slides = document.getElementsByClassName("slider"+order);
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    slides[slideIndex-1].style.display = "block";  
}

window.onload = function(){
    currentSlide(1);
}