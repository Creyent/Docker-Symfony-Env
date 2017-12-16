var gulp = require('gulp');
var php = require('gulp-connect-php');
var browserSync = require('browser-sync');

gulp.task('watch', function() {
  browserSync.init({
    files: ['./*.php', '*.php', './*.html', '*.html', './*.js', '*.js', './*.twig', '*.twig'],
    proxy: 'csp.php:8080',
    port: 4000,
    open: false,
    notify: true
  });
});