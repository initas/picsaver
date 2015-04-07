$(function(){

    var ul = $('#upload ul');

    $('#drop a').click(function(){
        $(this).parent().find('input').click();
    });

    $('#uploader').fileupload({
        dropZone: $('#drop'),
        add: function (e, data) {
			
			
            var tpl = $('<div class="item"><div class="progress">0</div></div>');
			
			var reader = new FileReader();
			reader.onload = function(e) {
				tpl.css('background-image', 'url('+(e.target.result)+')');
			}
			reader.readAsDataURL(data.files[0]);
			
            tpl.find('p').text(data.files[0].name).append('<i>' + formatFileSize(data.files[0].size) + '</i>');
			
            data.context = tpl.appendTo('div.items');
            tpl.find('span').click(function(){
                if(tpl.hasClass('working')){
                    jqXHR.abort();
                }
                tpl.fadeOut(function(){
                    tpl.remove();
                });
            });
            var jqXHR = data.submit();
        },

        progress: function(e, data){
            var progress = parseInt(data.loaded / data.total * 100, 10);
            data.context.children('.progress').text(progress).css("width", progress+"%").change();
            if(progress == 100){
                data.context.removeClass('working');
            }
        },

        fail:function(e, data){
            data.context.addClass('error');
        },
		done:function(e, data){
			width = data.context.css('width');
			width = width.replace(/px/gi, ""); 
			//data.context.css('background-image', 'url('+URL+'/img/thumb/'+width+'/'+(data.result)+')');
		}

    });

    $(document).on('drop dragover', function (e) {
        e.preventDefault();
    });

    function formatFileSize(bytes) {
        if (typeof bytes !== 'number') {
            return '';
        }
        if (bytes >= 1000000000) {
            return (bytes / 1000000000).toFixed(2) + ' GB';
        }
        if (bytes >= 1000000) {
            return (bytes / 1000000).toFixed(2) + ' MB';
        }
        return (bytes / 1000).toFixed(2) + ' KB';
    }

});