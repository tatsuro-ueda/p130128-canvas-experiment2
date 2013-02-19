$ ->
  v = new ViewOrderShuffledViewModel
  v.getFileNames()
    .done ->
      ko.applyBindings v