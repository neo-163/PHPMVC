# PHP MVC
PHP MVC is a custom developed PHP MVC made by Neo.<br/>

# Version
V1.0: 2020-09-14<br/>

# PHP MVC Detail
Default url, show the logs data:<br/>
http://localhost/PHPMVC/index.php<br/>
Or:<br/>
http://localhost/PHPMVC/index.php?l=web&c=index&m=index<br/>

Log url, insert log data:<br/>
http://localhost/PHPMVC/index.php?l=web&c=index&m=log<br/>

Parameter "l" is the folder of controllers<br/>
Parameter "c" is the controller file name<br/>
Parameter "m" is the controller method <br/>

For example, location: "\app\web\controllers\IndexController.php", controller: "IndexController.php", method: "index()", the url is:<br/>
http://localhost/PHPMVC/index.php?l=web&c=index&m=index<br/>
