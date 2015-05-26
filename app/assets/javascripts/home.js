/* jQuery ready */
$(function () {
  if (getCookie('nickName')) {
    $('input.nicnName').val(getCookie('nickName'));
  }

  $('.message-confirm').click(function (e) {
    setCookie('nickName', $('input.nicnName').val(), 3600 * 24 * 30);
  });
});


var getCookie = function (key) {
  if ( document.cookie.length === 0 )   return false;
  var i = document.cookie.search(key + '=');
  if ( i === -1 )   return false;
  i += key.length+1;
  var j = document.cookie.indexOf(';' , i);
  if ( j === -1 )   j = document.cookie.length;
  return document.cookie.slice(i , j);
};

var setCookie = function (key, value, expire) {
  var ck = key + '=' + value;
  if ( expire ) {
    var epr = new Date();
    epr.setTime(epr.getTime() + expire * 1000 );
    ck += ';expires=' + epr.toUTCString();
  }
  document.cookie = ck;
};