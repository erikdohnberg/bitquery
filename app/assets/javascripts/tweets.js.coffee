# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#jQuery style:
  # $('#tweet_content').live('keyup keydown', function(e) {
  #   var maxLen = 140;
  #   var left = maxLen - $(this).val().length;
  #   $('#char-count').html(left);
  # });

$(document).on "keyup keydown", "#tweet_content", (e) ->
  maxLen = 140
  left = maxLen - $(@).val().length
  $('#char-count').html left
