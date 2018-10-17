// убедиться в наличии файла mail_sender (сниппет и ниипет), а также файла phpmailer.php
// убедиться в наличии сниппетов forms, form-ajax, 
// создать фиктивный материал form-ajax с содержимым [[!form-ajax]] - вызов сниппета
// создать в материалах дочерний документ "заказы из формы", ID будет прописан в "content_root" (forms)
//


-----------------------------------------------------------------------------
--------------------                                 ------------------------
--------------------     chunk $pageform             ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
<div id="pageform" class="services">
        <div class="inner_width">
            <form class="pageform" data-action="ajax">
                <h2>Напишите нам и мы с Вами свяжемся</h2>
                <input type='text' name='phone' class='required' />
                
                <ul>
                  <li>
                    <div class="name">Ваше имя</div>
                    <div class="inp-wrap">
                      <input type="text" name="name" placeholder="Ваше имя">
                    </div>
                  </li>
                  <li>
                    <div class="name">Ваш телефон</div>
                    <div class="inp-wrap">
                      <input type="text" name="nospam" placeholder="Ваш телефон или E-mail *">
                    </div>
                  </li>
                  <li>
                    <div class="name">Сообщение</div>
                    <div class="inp-wrap">
                      <textarea name="message" placeholder="Сообщение"></textarea>
                    </div>
                  </li>
                  <li>
                    <div class="inp-wrap">
                        <input type="checkbox" id="polite" name="polite" /> <label for="polite">СОГЛАСЕН С <a href="/[[~109]]" target="_blank">УСЛОВИЯМИ</a> ОБРАБОТКИ ПЕРСОНАЛЬНЫХ ДАННЫХ</label>
                    </div>
                  </li>
                </ul>
                <button class="more send" style="margin-top:40px; padding-right:50px;">Отправить<i class="more_ar"></i></button>
    
[[-
                <label class="show-more  ">
                    <span>Прикрепить файл</span>
                    <input type="file" style="display: none" id="wform-vacancy-files" name="files" data-max_files="1" data-max_file_size="5" />
                    <div class="preloader" data-for="wform-vacancy-files"></div>
                </label>  
]]
                
                <div class="clb"></div>
            </form>
        </div>
    </div>

-----------------------------------------------------------------------------
--------------------                                 ------------------------
--------------------                  css            ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
.services {
    position: relative;
    background: #aaa center top repeat-y;
    padding: 63px 0 47px;
    text-align: center;
    z-index: 5;
}
.pageform a {
    color: #666;
}
.pageform {
    text-align: center;
	min-height: 433px;
}
.pageform>h2 {
    margin-bottom: 30px;
}
.inner_width {
    position: relative;
    max-width: 1170px;
    min-width: 290px;
    padding: 0 15px;
    margin: 0 auto;
}
button, input {
    overflow: visible;
}
button, input {
    font-family: inherit;
	font-size: 100%;
	line-height: 1.15;
	margin: 0;
}
.pageform>ul {
    text-align: left;
    list-style: none;
}
.pageform>ul:before, .pageform>ul:after {
    content: " ";
	display: table;
    clear: both;
}
.pageform>ul>li:nth-child(1), .pageform>ul>li:nth-child(2) {
    width: 49%;
	float: left;
}
.pageform>ul>li {
	margin-left: 0;
}
.pageform>ul>li {
    margin-left: 0;
}
.pageform>ul>li .name {
    font: 17px/21px proxima,sans-serif;
	color: #36365f;
}
.pageform>ul>li .inp-wrap {
    margin-top: 11px;
}
.pageform>ul>li .inp-wrap input[type="text"] {
    height: 50px;
}
.pageform>ul>li .inp-wrap input[type="text"], .pageform>ul>li .inp-wrap textarea {
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent;
	outline: 0;
	background: #fff;
	font: 16px/22px proxima,sans-serif;
	color: #262626;
	padding-left: 18px;
	padding-right: 18px;
	width: 100%;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 25px;
	border-radius: 25px;
	border: 1px solid #fff;
}
.pageform>ul>li:nth-child(2) {
    margin-left: 2%;
}
.pageform>ul>li .inp-wrap input[type="text"] {
    height: 50px;
}
.pageform>ul>li:nth-child(3) {
    padding-top: 26px;
	float: none;
	clear: both;
}
.pageform>ul>li .inp-wrap textarea {
    height: 162px;
	width: 100%;
	padding-top: 18px;
	resize: none;
}
.services .inner_width {
    z-index: 2;
}

.required {
    display: none;
}

.name {
    display: none;
}

a.more, button.more {
    position: relative;
    border: 1px solid #dadada;
    height: 46px;
    width: 216px;
    padding-left: 30px;
    padding-right: 10px;
    font: 16px/46px 'proxima', sans-serif;
    color: #36365f;
    display: block;
    box-sizing: border-box;
    text-transform: uppercase;
    text-decoration: none;
    border-radius: 35px;
    text-align: left;
    transition: 0.4s all;
}

a.more:hover, button.more:hover {
    border-color: #4040a0;
    background: #4040a0;
    color: #fff;
}

a.more:after, button.more:after {
    content: ' ';
    opacity: 0;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: #dadada url(../images/site/sprite-arrow.png) 0px 0px no-repeat;
    position: absolute;
    right: 6px;
    top: 6px;
    transition: 0.4s all;
}

a.more:hover:after, button.more:hover:after {
    opacity: 1;
}

.more_ar {
    display: block;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: #4040a0;
    position: absolute;
    right: 6px;
    top: 6px;
    transition: 0.4s all;
}

/*a.more:hover + a.more_ar {
    background: #dadada;
}
*/
.more_ar:after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    display: block;
    background: url(../images/site/sprite.png) -17px -77px no-repeat;
    display: block;
    width: 8px;
    height: 14px;
    margin-top: -7px;
    margin-left: -3px;
}

button.send {
    border-color: #4040a0;
    background: #4040a0;
    color: #fff;
    line-height: 21px;
    width: auto;
    cursor: pointer;
}

button.send:after {
    content: ' ';
    opacity: 0;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: #dadada url(../images/site/sprite-arrow.png) 0px 0px no-repeat;
    position: absolute;
    right: 6px;
    top: 6px;
    transition: 0.4s all;
}

button.loading {
    border-color: #dadada;
    width: 174px;
    background: #ffffff url(../images/ajax-loader-w.gif) center no-repeat;
    transition: 0s all;
}

button.loading:hover {
    border-color: #dadada;
    width: 174px;
    background: #ffffff url(../images/ajax-loader-w.gif) center no-repeat;
}

button.loading:after {
    content: '';
}

button.loading:hover:after {
    opacity: 0;
}


-----------------------------------------------------------------------------
--------------------                                 ------------------------
--------------------       обработчик js             ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
        
$(document).ready(function() {
    
/*
    $('form[data-action="ajax"]').on("click", 'label', function(){
        if($(this).hasClass('uploaded'))
        {
            $(this).removeClass('uploaded')
                    .children('span').html("Прикрепить файл")
                    .siblings('input[type="file"]').val('')
                    .siblings('.preloader').html('');
            return false;
        }
    });
    $('form[data-action="ajax"]').on("change", 'input[type="file"]', function(){
        uploadFile(this);
    });
    
*/

    $('form[data-action="ajax"]').submit(function(){
        if($(this).hasClass('loading'))
        {
            return false;
        }
        
        var flNospam = $(this).find("input[name=nospam]");
        var flName = $(this).find("input[name=name]");
        var flPhone= $(this).find("input[name=phone]");
        var flMessage = $(this).find("textarea[name=message]");
        
        var errors = false;
        
        if(flNospam.val() == "")
        {
            errors = true;
            $(flNospam).on("keyup",function(){
                if($(this).val() != "")
                {
                    $(this).parent().parent().removeClass("error");
                    $(this).off("keyup");
                }
            }).focus().parent().parent().addClass("error");
        }
    
        if($(this).find("input[type=checkbox][name=polite]").prop("checked") == false)
        {
            $(this).find("input[type=checkbox][name=polite]").on("change",function(){
                if($(this).prop("checked"))
                {
                    $(this).parent().parent().removeClass("error");
                    $(this).off("change");
                }
            }).parent().parent().addClass("error");
            
            if(!errors)
            {
                alert("Вы должны согласиться с условиями обработки персональных данных");
                errors = true;
            }
            
            return false;
        }
        
        if(errors)
        {
            return false;
        }
        
        var buttonHtml = $(this).find('button').addClass('loading').html();
        $(this).find('button').html('');
        //$(this).addClass('loading').find('button').html('').siblings('.notice').remove();
        
        var target = this;
        
        /*
        var files = {};
        $("input#wform-vacancy-files", this).siblings(".preloader").find('input').each(function(index, element){
            files[index] = { path: $(element).val(), user_filename: $(element).attr('data-user_filename') };
        });
        */
        
        //block($(target), 1);
        $.ajax({
            url: "/form-ajax/?form",
            method: "POST",
            data: {
                form: {
                    type: "wform-pageform",
                    name: "Вакансия"
                },
                fields: {
                    nospam: {
                        field: "",
                        value: flNospam.val()
                    },
                    name: {
                        field: "Ваше имя",
                        value: flName.val()
                    },
                    phone: {
                        field: "Phone",
                        value: flPhone.val()
                    },
                    message: {
                        field: "Message",
                        value: flMessage.val()
                    },
                    politika: {
                        value: true
                    },
                    /*
                    files: {
                        field: "Резюме",
                        value: files
                    }
                    */
        
                }
            }
        }).always(function(response)
        {
            $(target).removeClass('loading').find('button').removeClass('loading').html(buttonHtml);
         //   $(target).removeClass('loading').find('button')
            
            c(response.status);
            
            if(typeof(response.status) == 'undefined' || response.status != 'success')
            {
                var err = typeof(response.status) != 'undefined' && typeof(response.reason) != 'undefined' ? ('<br><br>Уточнение: ' + response.reason) : '';
                $(target).append('<div class="notice" style="margin-top: 40px; color: #f00; font-size: 16px; color: #f00; font-weight: 600;">Ошибка! Ваше сообщение не отправлено.<br />Попробуйте еще раз или свяжитесь с администратором сайта.'+err+'</div>');
                return;
            }
            
            if(response.status == "success")
            {
                $('.pageform').after('<div class=\"formaccess\">Спасибо! Ваше сообщение успешно отправлено!<br>В ближайшее время менеджер свяжется с Вами!</div>');
                $('.pageform').fadeTo(500,0).next('div').fadeIn();
                
                return;
                
                $(target).append('<div class="notice" style="margin-top: 40px; font-size: 16px; font-weight: 600; ">Спасибо! Ваше сообщение успешно отправлено!</div>');
                
                $(target).find("input:not(input[type=checkbox]), textarea").val("");
                $(target).find("input[type=checkbox]").prop("checked", false);
                
                /*
                $('label.upload', target).removeClass('uploaded')
                                            .children('span').html("Прикрепить файл")
                                            .siblings('input[type="file"]').val('')
                                            .siblings('.preloader').html('');
                */
            }
            
            return;
            
            setTimeout(function(){
                block($(target), 0);
            }, 5000);
            
        });
        
        return false;
    });
});
    

function uploadFile(target){
    
    var files = target.files;
    var container = $(target);
    var field_id = container.attr("id");
    
    if($(".preloader[data-for="+field_id+"]").find(".file").length == $(target).attr("data-max_files"))
    {
        alert("Достигнуто максимальное количество файлов");
        //$(container).replaceWith($(container).clone());
        container.val('');
        return;
    }
    
    var max_file_size = $(target).attr("data-max_file_size");
    if(files[0]['size'] > max_file_size * 1024*1024){
        alert("Размер файла не может быть больше "+max_file_size+" Мб.");
        container.val('');
        return false;
    };
    
    event.stopPropagation();
    event.preventDefault();
    
    var xhr = new XMLHttpRequest();
    
    // обработчики успеха и ошибки
    // если status == 200, то это успех, иначе ошибка
    
    var id = makeid();
    
    $(".preloader[data-for="+field_id+"]").append("<div class='file' id='"+id+"'><input type='hidden' data-systemField='1' data-user_filename='"+files[0]['name']+"' value=''/><div class='pr'></div><div class='cnt'><div class='progr'></div><span class='fn'>"+files[0]['name']+"</span><span class='del'></span></div></div>")
    //<img src='/template/modules/ff/images/file.png'/>
    
    xhr.upload.onprogress = function(event) {
        var current = Math.ceil(event.loaded * 100 / event.total);
        $("#"+id).find(".progr").css("width", current+"%");
    }
    
    xhr.onload = xhr.onerror = function() {
        
        container.val('');
        
        if (this.status == 200) {
            response = JSON.parse(this.response);
            
            if(response.status != "success")
            {
                alert(response.reason);
                $(".preloader[data-for="+field_id+"] #"+id).remove();
            }
            else
            {
                $("#"+id).find("input").val(response.file);
                if(typeof(response.preview) != "undefined")
                {
                    $("#"+id).find(".pr").children("img").attr("src", response.preview);
                }
                $("#"+id).find(".progr").fadeOut("fast");
                container.siblings('span').html('Удалить').parent().addClass('uploaded');
                c(container)
            }
            
        } 
        else 
        {                
            console.log("error " + this.status);                
        }
        
        $(container).replaceWith($(container).clone());
    };
    
    xhr.open("POST", '/form-ajax?upload&field_id='+field_id, true);
    
    xhr.setRequestHeader("ajax", "true");
    
    var data = new FormData();
    $.each( files, function( key, value ){
        data.append( key, value );
    });
    
    xhr.send(data);
};

function makeid()
{
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 5; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

-----------------------------------------------------------------------------
--------------------                                 ------------------------
------------------- mail-pageform-admin (mail-tpl)   ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
<h3 style=" ">Заполнена форма на сайте optimahold.ru</h3>

<p>Пользователь предоставил следующие данные:</p>

<ul style="padding-left: 0; margin-left: 0; ">
[[+name:notempty=`<li>ФИО: [[+name]]</li>`]]
<li>E-mail/Телефон: [[+phone]]</li>
[[+message:notempty=`<li>Комментарий: [[+message]]</li>`]]
</ul>


-----------------------------------------------------------------------------
--------------------                                 ------------------------
------------------- mail-pageform-admin (mail-tpl)   ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
--------------------                                 ------------------------
------------------- mail-pageform-admin (mail-tpl)   ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
--------------------                                 ------------------------
------------------- mail-pageform-admin (mail-tpl)   ------------------------
--------------------                                 ------------------------
-----------------------------------------------------------------------------



