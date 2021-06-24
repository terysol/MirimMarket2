function addIMG(event) {
    var len = document.querySelector(".inputIMG").childNodes.length + event.target.files.length;
    
    if(event.target.files.length < 5 && len < 5)
        for (var input_file of event.target.files) {
            var reader = new FileReader(); 
            reader.onload = function(event) { 
                var span = document.createElement("span");
                document.querySelector(".inputIMG").appendChild(span);

                var delBTN = document.createElement("button");
                delBTN.setAttribute("onclick", "delIMG()"); 
                delBTN.innerHTML = "&times";
                span.appendChild(delBTN); 

                var img = document.createElement("img"); 
                img.setAttribute("src", event.target.result); 
                span.appendChild(img); 
            }; 
            console.log(input_file); 
            reader.readAsDataURL(input_file); 
        }
    else
        alert("이미지는 최대 4개까지만 가능합니다.");
}

function delIMG(){
    var span = event.target.parentNode;
    span.parentNode.removeChild(span);
    console.log(parent);
}