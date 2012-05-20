<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>欢迎来到班车中国</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="提供深圳班车接送上下班、包车旅游活动等业务" />
    <meta name="keywords" content="深圳班车接送，上下班接送，旅游、活动包车"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
    <style>
    *{
        margin:0;
        padding:0;
    }

    body {
        height: 100%;
        background-image: url('/images/bj.jpg');
        background-repeat-x: repeat;
        background-repeat-y: no-repeat;
        background-attachment: initial;
        background-position-x: 50%;
        background-position-y: 0%;
        background-origin: initial;
        background-clip: initial;
        background-color: #2C4762;
        font: normal 14px/1.4 "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
        color: #444;
        margin: 0;
        padding: 0;

    }
    .title{
        width:548px;
        height:119px;
        position:absolute;
        top:400px;
        left:150px;
        background:transparent url(title.png) no-repeat top center;
    }
    a.back{
        background:transparent url(back.png) no-repeat top center;
        position:fixed;
        width:150px;
        height:27px;
        outline:none;
        bottom:0px;
        left:0px;
    }
    #content{
        margin:0 auto;
    }


    </style>
</head>

<body>
<div id="content">

    <div class="title"></div>

    <div class="navigation" id="nav">
        <div class="item user">
            <img src="images/bg_user.png" alt="" width="199" height="199" class="circle"/>
            <a href="#" class="icon"></a>
            <h2>留言</h2>
            <ul>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Properties</a></li>
                <li><a href="#">Privacy</a></li>
            </ul>
        </div>
        <div class="item home">
            <img src="images/bg_home.png" alt="" width="199" height="199" class="circle"/>
            <a href="#" class="icon"></a>
            <h2>主页</h2>
            <ul>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <div class="item shop">
            <img src="images/bg_shop.png" alt="" width="199" height="199" class="circle"/>
            <a href="#" class="icon"></a>
            <h2>预订</h2>
            <ul>
                <li><a href="#">Catalogue</a></li>
                <li><a href="#">Orders</a></li>
                <li><a href="#">Offers</a></li>
            </ul>
        </div>
        <div class="item camera">
            <img src="images/bg_camera.png" alt="" width="199" height="199" class="circle"/>
            <a href="#" class="icon"></a>
            <h2>线路</h2>
            <ul>
                <li><a href="/banchecn/routeLine/viewLine?lineType=super&queryKey=精品路线">精品路线</a></li>
                <li><a href="/banchecn/routeLine/viewLine?lineType=has&queryKey=已开通路线">已开通路线</a></li>
                <li><a href="/banchecn/routeLine/viewLine?lineType=pre&queryKey=预开通路线">预开通路线</a></li>
            </ul>
        </div>

        <div class="item fav">
            <img src="images/bg_fav.png" alt="" width="199" height="199" class="circle"/>
            <a href="#" class="icon"></a>
            <h2>车型</h2>
            <ul>
                <li><a href="#">Social</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Comments</a></li>
            </ul>
        </div>
        <div class="item search SearchBox">
            <g:form url='[controller:"routeLine",action:"search"]'
                    id="lineSearchFrm" name="lineSearchFrm" method="get"   >
                <g:textField name="lineKey" value="${params.lineKey}"  class="searchInput"/>
                <input type="submit" value="搜索" class="searchButton"/>
            </g:form>
        </div>


    </div>
</div>



<!-- The JavaScript -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript">
    $(function() {
        $('#nav > div').hover(
                function () {
                    var $this = $(this);
                    $this.find('img').stop().animate({
                        'width'     :'199px',
                        'height'    :'199px',
                        'top'       :'-25px',
                        'left'      :'-25px',
                        'opacity'   :'1.0'
                    },500,'easeOutBack',function(){
                        $(this).parent().find('ul').fadeIn(700);
                    });

                    $this.find('a:first,h2').addClass('active');
                },
                function () {
                    var $this = $(this);
                    $this.find('ul').fadeOut(500);
                    $this.find('img').stop().animate({
                        'width'     :'52px',
                        'height'    :'52px',
                        'top'       :'0px',
                        'left'      :'0px',
                        'opacity'   :'0.1'
                    },5000,'easeOutBack');

                    $this.find('a:first,h2').removeClass('active');
                }
        );
    });
</script>

</body>
</html>