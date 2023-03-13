$(document).ready( function() {
    $( "#id_bg_paper" ).change(function() {
        var paper = $('#id_bg_paper').val();
        mediaurl = "http://127.0.0.1:8000/"+"media/paper/paper"+ paper+'.jpg'
        document.getElementById('myimage').src = mediaurl
      });

    $( "#id_font_family" ).change(function() {
        var fontfamily = $('#id_font_family').val();
        document.getElementById("theText").style.fontFamily = fontfamily;
      });
    $( "#id_font_size" ).change(function() {
        var font_size = $('#id_font_size').val();
        var element = document.getElementById("theText");
        element.style.fontSize = font_size;
      });
    $( "#id_ink_color" ).change(function() {
        var ink_color = $('#id_ink_color').val();
        var element = document.getElementById("theText");
        element.style.color = ink_color;
      });          
    $(function() { 
        $('#theText').draggable({
            containment: 'parent'     // set draggable area.
        }); 
    });
});
let chooseImage = () => {
    document.getElementById('file_input').click();
    
}
let showImage = (fl) => {
    if (fl.files.length > 0) {
        let reader  = new FileReader();

        reader.onload = function (e) {
            let img = new Image();
            
            img.onload = function () {
                if (this.width > screen.width || this.height > screen.height) {
                    alert('Please select a small image. The image width and height should be less than the screen width and height.');

                    document.getElementById('theText').style.display = 'none';
                    document.getElementById('bt').style.display = 'none';
                    document.getElementById('id_text_convert').style.display = 'none';
                    document.getElementById('myimage').src = '';
                }
                else {
                    document.getElementById('theText').style.display = 'block';
                    document.getElementById('bt').style.display = 'block';
                    document.getElementById('id_text_convert').style.display = 'block';
                }
            }

            img.src = e.target.result;      // actual image. 
            document.getElementById('myimage').src = reader.result;  // Add the image on the form.
        };
        reader.readAsDataURL(fl.files[0]);
    }
}
let textContainer;
    let t = 'sample text';
let writeText = (ele) => {
    t = ele.value;
    console.log(t);
    document.getElementById('theText').innerHTML = t.replace(/\n\r?/g, '<br />');
}    

// Finally, save the image with text over it.
    let saveImageWithText = () => {
        textContainer = document.getElementById('theText');     // The element with the text.
    
        // Create an image object.
        let img = new Image();
        img.src = document.getElementById('myimage').src;
       
        // Create a canvas object.
        let canvas = document.createElement("canvas");
        
        // Wait till the image is loaded.
        img.onload = function(){
            drawImage();
            downloadImage(img.src.replace(/^.*[\\\/]/, ''));    // Download the processed image.
        }
        
        // Draw the image on the canvas.
        let drawImage = () => {
            let ctx = canvas.getContext("2d");	// Create canvas context.

            // Assign width and height.
            canvas.width = img.width;
            canvas.height = img.height;

          	// Draw the image.
            ctx.drawImage(img, 0, 0);
            
            textContainer.style.border = 0;
            
            // Get the padding etc.
            let left = parseInt(window.getComputedStyle(textContainer).left);
            let right = textContainer.getBoundingClientRect().right;
            let top = parseInt(window.getComputedStyle(textContainer).top, 0);
            let center = textContainer.getBoundingClientRect().width / 2;

            let paddingTop = window.getComputedStyle(textContainer).paddingTop.replace('px', '');
            let paddingLeft = window.getComputedStyle(textContainer).paddingLeft.replace('px', '');
            let paddingRight = window.getComputedStyle(textContainer).paddingRight.replace('px', '');
            
            // Get text alignement, colour and font of the text.
            let txtAlign = window.getComputedStyle(textContainer).textAlign;
            let color = window.getComputedStyle(textContainer).color;
            let fnt = window.getComputedStyle(textContainer).font;
            // Assign text properties to the context.
            ctx.font = fnt;
            ctx.fillStyle = color;
            ctx.textAlign = txtAlign;
			
            // Now, we need the coordinates of the text.
            let x; 		// coordinate.
            if (txtAlign === 'right') {
            	x = right + parseInt(paddingRight) - 11;
            }
            if (txtAlign === 'left') {
            	x = left + parseInt(paddingLeft);
            }
            if (txtAlign === 'center') {
            	x = center + left;
            }

            // Get the text (it can a word or a sentence) to write over the image.
            let str = t.replace(/\n\r?/g, '<br />').split('<br />');

            // finally, draw the text using Canvas fillText() method.
            for (let i = 0; i <= str.length - 1; i++) {
            	
                ctx.fillText(
                    str[i]
                        .replace('</div>','')
                        .replace('<br>', '')
                        .replace(';',''), 
                    x, 
                    parseInt(paddingTop, 10) + parseInt(top, 10) + 10 + (i * 15));
            }

          // document.body.append(canvas);  // Show the image with the text on the Canvas.
        }

        // Download the processed image.
        let downloadImage = (img_name) => {
            let a = document.createElement('a');
            a.href = canvas.toDataURL("image/png");
            a.download = img_name;
            document.body.appendChild(a);
            a.click();        
        }
    }

    (function($) {
        if (!$.curCSS) {
           $.curCSS = $.css;
        }
    })(jQuery);  