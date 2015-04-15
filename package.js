Package.describe({
  name: 'getoutfitted:reaction-foundation-theme',
  version: '0.0.1',
  summary: 'Zurb Foundation 5 starter theme for ReactionCommerce',
  git: 'https://github.com/getoutfitted/reaction-foundation-theme.git'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0');
  api.use('juliancwirko:zf5@1.0.1')
});
//
// Package.onTest(function(api) {
//   api.use('tinytest');
//   api.use('reaction-foundation-theme');
//   api.addFiles('reaction-foundation-theme-tests.js');
// });
