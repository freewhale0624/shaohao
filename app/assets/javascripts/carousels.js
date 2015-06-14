// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function () {
  $('.file-uploader').fileinput({
    browseClass: "btn btn-success",
    browseLabel: "選取照片",
    showUpload: false,
    browseIcon: '<i class="glyphicon glyphicon-picture"></i> ',
    removeLabel: "移除"
  });
});
