$(function(){
  $("form#new_post").on("submit", function(e){
    e.preventDefault()
    var $form = $(this);
    var action =  $form.attr("action")
    var params = $form.serialize()

    $.ajax({
      url: action,
      data: params,
      dataType: "json",
      method: "POST "
    })
    .success(function(json){
      console.log(json)
    })
    .error(function(response){
      console.log("You broke it?", response)
    })
  })
})
