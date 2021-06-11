function state(){
    const maxState = 5;
    var position = 287;
    var state = 3;
    for(var i=1; i<=state; i++){
        document.write(
            '<svg class="productStateFill" style="left: '+ position + 'px;"> <ellipse id="productStateFill" rx="7.5" ry="7.5" cx="7.5" cy="7.5"/> </svg>'
        );
        position += 19;
    }

    for(var i=state; i<maxState; i++){
        document.write(
            '<svg class="productStateNoneFill" style="left: '+ position + 'px;"> <ellipse id="productStateNoneFill" rx="7.5" ry="7.5" cx="7.5" cy="7.5"/> </svg>'
        );
        position += 19;
    }
}