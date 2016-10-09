$(document).ready(function () {
  $('a.more-toggle').click(function(e) {
    var el;
    e.preventDefault();
    $(e.target).parents(".card-wide").find(".more").toggle();

    if ($(e.target).hasClass("more-toggle")) {
      el = $(e.target);
    } else {
      el = $(e.target).parents("a.more-toggle");
    }
    if (el.text().trim() == 'More') {
      el.text("Less")
    } else {
      el.text("More")
    }
  });

  $("#country-select").change(function(e) {
    window.location = "/countries/"+this.value;
  })
});
