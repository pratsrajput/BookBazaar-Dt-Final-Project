<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
<meta name="description" content="A customized about us page design using bootstrap framework, HTML and CSS. If you need to use this attractive and responsive bootstrap about us page design go back to article and click download button to download it.">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/resources/pics" var="z"/>
<style>
body{font-family:'Open Sans Condensed',sans-serif;font-size:20px;}
/* header */
html,body{height:100%; width:100%}
h1,h2,h3{font-weight:700}
header{position:relative; width:100%; background-size:cover; background-position:center; background-image:url(images/header.jpg); text-align:center}
header .wel{position: relative;text-align: center;padding: 100px 15px 100px;width: 100%; color:#eee}
.wel h1{font-weight:700; color:#fff}.brk{height:4px; border-radius:4px; background:#d9534f; margin:25px auto; display:block; width:60px}
.abs-back{background:rgba(29, 21, 24, 0.4); position:absolute; height:100%; width:100%; left:0; top:0}
/* who we */
.who-we{margin-top:50px; margin-bottom:50px}
.who-we h2{color:#d9534f;}

/* media */
@media (min-width:768px) { 
header{ min-height: 50%} 
header .wel{position:absolute; top:50%; transform:translateY(-50%); -moz-transform:translateY(-50%); -webkit-transform: translateY(-50%); -ms-transform: translateY(-50%); padding: 0 50px;}
.wel-info{max-width:850px; margin-left:auto; margin-right:auto} .
who-we h2{font-size:42px} .wel h1{font-size:65px} header .wel{font-size:26px} 
}

</style>
</head>
<body >
<jsp:include page="Header.jsp"></jsp:include>
<br>
<header id="half"> 
 <div class="abs-back"></div> 
 <div class="wel">
<div class="wel-info">

<h1>Book Bazaar ...Find All About Us Here</h1>
<span class="brk"></span>
<pre><p> " A word after a word after a word is power"

                                    - Margaret Atwood</p></pre>

</div>
</div>
</header>

<div class="container who-we">

<div class="wel-info text-center">

<h2>Who We Are?</h2>
<span class="brk"></span>
<p>Hi Bookworms! Welcome to BookBazaar.com - your friendly online bookstore. We found you after having searched many friendly and not-so-friendly neighbourhoods! We know you love books, and books love you too... Therefore, we decided to arrange a 'fantasy date' between the two of you.

We have a huge collection of old and new books, bestsellers (some discovered and some yet to be), rare and priceless books in their new avatars, competitive examination books to keep your parents happy, books on varied academic subjects as diverse as Medicine, Law, Management and every other 'hot n cold' matter that might interest you; Dictionaries, Encyclopaedias and 'Gyanvardhak Pustaks'.

We love English and Hindi equally... And are trying to fall in love with other languages, too! If you are searching for a particular book, please tap our Request a Book button, and we shall move heaven, earth and even old cupboards to find it for you.

Our price tags are made in Taiwan, and come at a startlingly low price. But, not to worry, our books come from all over the world and shall have a VERY long shelf life in your home. Just treat them with the same care and respect with which you handle your mother in law! 

Our delivery time is superfast.... BookBazaar.com has upgraded from its humble iron wheels into the most reliable, efficient and 'vroom' service that you can think of! For bulk orders, send us a mail at support@bookbazaar.com and we'll get back to you.

I know we have stimulated your mind, fingers and Funny Bone - please put them to good use and browse our bookstore. Order, and a few lifelong friends will be on their way to you! And then, as you guys enjoy your moments, days and years together, please don't forget your friendly online BookBazaar... We, surely shall never forget you!</p>

</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>