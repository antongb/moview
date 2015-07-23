var movieArr;

myapifilms = function(array){
       console.log(array);
       movieArr = array;
       $(".movies").html("<ul>");
       $(array).each(function (idx, movie) {
         var renderedContent = '<li><a href="/movies/' + movie.title + '">' + movie.title ;
         $(".movies ul").append(renderedContent);
       })
};

var jsonpRequest = function(url, callback) {
 $.ajax({
   type: "GET",
   url: "http://www.myapifilms.com/imdb/top",
   dataType: 'jsonp',
   data: {format: 'JSONP'}
 })
   .done(function( data ) {


   });
};


window.setTimeout(jsonpRequest('http://www.myapifilms.com/imdb/top', function (data) {
    // console.log(data);
  }), 5000)
