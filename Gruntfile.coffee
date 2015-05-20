module.exports = (grunt) ->

  # load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks

  grunt.initConfig
    coffee:
      compile:
        files: [
          expand: true
          cwd: 'src'
          src: ['{,**/}*.coffee', '!**/node_modules/**']
          dest: 'dist'
          ext: '.js'
        ]
    coffeelint:
      app: '*.coffee'

    copy:
      main:
        files: [
          expand: true
          dot: true
          cwd: '.'
          src: ['package.json', 'Procfile']
          dest: 'dist'
        ]

    nodemon:
      dev:
        script: 'app.js'
        options:
          nodeArgs: ['--debug']
          cwd: 'dist'
          ext: 'js'
          env:
            AVOID_CLUSTERS: true

    "node-inspector":
      dev: {}

    watch:
      server:
        files: ['Gruntfile.coffee', 'src/{,**/}*.coffee']
        tasks: ['coffeelint', 'coffee']


    concurrent:
      main:
        tasks: ['nodemon', 'watch:server', 'node-inspector']
        options:
          logConcurrentOutput: true

  grunt.registerTask 'build', ['coffee', 'coffeelint', 'copy']
  grunt.registerTask 'default', ['coffee', 'coffeelint', 'copy', 'concurrent']
