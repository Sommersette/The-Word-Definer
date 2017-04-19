var wordsArray = [];
var newArray = [];




$(document).ready(function(){

  $("#formOne").submit(function(event){
    event.preventDefault();
    newArray.length = 0;
    wordsArray = $("input").val().split(" ");

     wordsArray.forEach(function(word){
      if (word.length > 3) {
        newArray.push(word);
        newArray.reverse().toString();
      };
    });
    $("#output").text(newArray)
  });
});
