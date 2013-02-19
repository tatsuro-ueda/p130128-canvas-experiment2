$ ->
  v = new ViewWithSeedViewModel
  v.getFileNames()
    .done ->
      ko.applyBindings v