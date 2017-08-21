// #= require active_admin/base


$(document).ready(function(){
  $.getJSON("https://www.marinetraffic.com/en/ais/details/ships/shipid:4199684/mmsi:244670249/vessel:STORMALONG",
    function(data){
      var moneyShot = $(".details_data_link")[0].innerHTML
    });
});

console.log(moneyShot)
