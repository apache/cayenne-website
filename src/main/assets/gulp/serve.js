/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

const gulp        = require("gulp");
const browserSync = require("browser-sync");
const watch       = require("gulp-watch");
require("./build.js");

gulp.task('serve', gulp.series('build:all', function(done) {

    const argv = require('yargs').argv;

    browserSync({
        server: {
            baseDir: global.hugoConfig.publicDir
        },
        open: false,
        host: argv.host,
        port: argv.port
    });

    watch(
        [
            global.hugoConfig.srcDir + '/content/**/*',
            global.hugoConfig.srcDir + '/data/**/*',
            global.hugoConfig.srcDir + '/layouts/**/*',
            global.hugoConfig.srcDir + '/config.yaml'
        ], gulp.series('build:all')
    );

    watch(
        [
            'styles/**/*.scss',
            'styles/**/*.css',
            'scripts/**/*.js',
            'images/**/*.*'
        ], gulp.series('build:all')
    );
    done();
}));
