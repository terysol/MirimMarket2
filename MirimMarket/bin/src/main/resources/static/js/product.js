function state(left, leftDIS, top, size){
    const maxState = 5;
    var state = 4;
    for(var i=1; i<=state; i++){
        document.write(
            '<svg class="productStateFill" style="left: '+ left + 'px; top: ' + top + 'px;"> <ellipse id="productStateFill" rx="' + size + '" ry="' + size + '" cx="' + size + '" cy="' + size + '"/> </svg>'
        );
        left += leftDIS;
    }

    for(var i=state; i<maxState; i++){
        document.write(
            '<svg class="productStateNoneFill" style="left: '+ left + 'px; top: ' + top + 'px;"> <ellipse id="productStateNoneFill" rx="' + size + '" ry="' + size + '" cx="' + size + '" cy="' + size + '"/> </svg>'
        );
        left += leftDIS;
    }
}