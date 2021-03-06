module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        expand: true
        cwd: './'
        src: ['bin/**/*.coffee', 'lib/**/*.coffee']
        dest: './'
        ext: '.js'
      compileTestSpecs:
        expand: true
        cwd: 'test'
        src: ['**/*.spec.coffee']
        dest: 'test'
        ext: '.spec.js'
    watch:
      app:
        files: '**/*.coffee'
        tasks: ['coffee:compile']

  # grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'cs-compile-tests', ['coffee:compileTestSpecs']
  grunt.registerTask 'cs-compile-all', ['coffee:compile', 'cs-compile-tests']
  grunt.registerTask 'build', ['coffee:compile']
  grunt.registerTask 'default', ['build']