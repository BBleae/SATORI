module.exports = function (grunt) {
    const config = require('./.screeps.json')
    grunt.loadNpmTasks('grunt-screeps')
    grunt.loadNpmTasks('grunt-text-replace')

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        screeps: {
            options: {
                email: config.email,
                password: config.password,
                branch: config.branch,
                ptr: config.ptr
            },
            dist: {
                src: ['dist/*.js']
            }
        },
        replace: {
            replace: {
                src: ['lib/js/src/*.js'],
                dest: 'dist/',
                replacements: [{
                    from: /require\((['"])\.\/([a-zA-Z0-9_-]+)\.js(['"])\)/g,
                    to: 'require($1$2$3)'
                }]
            }
        }
    })

    grunt.registerTask('default', ['replace', 'screeps']);
}
