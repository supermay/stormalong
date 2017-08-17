// in app/assets/javascripts/ckeditor/config.js

CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline",  "Strike",  "-", "Link", "Unlink", "Ordered List"],
  ];
  config.toolbar = "mini";

  // ... rest of the original config.js  ...
}
