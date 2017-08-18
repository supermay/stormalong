CKEDITOR.editorConfig = function (config) {

  // config.toolbar = [
  //   ["Bold", "Italic",  "Underline",  "Strike",  "-", "Link", "Unlink", "-", "Insert/Remove Numbered List", "Insert/Remove Bulleted List"],
  // ];
  config.toolbar = "mini";

  config.toolbar_mini = [
      // { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ] },
      // { name: 'styles', items: [ 'Font', 'FontSize' ] },
      // { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
      { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike', '-', 'NumberedList', 'BulletedList', '-', 'RemoveFormat' ] },
      // { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'SpecialChar' ] }
    ];
}
