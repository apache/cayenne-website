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

const gulp  = require('gulp');
const rev   = require('gulp-rev');
const del   = require('rev-del');
const path  = require('path');
const clean = require('gulp-clean');
require("./styles.js");
require("./scripts.js");
require("./images.js");
require("./fonts.js");

// separately copy source maps
gulp.task('copy-js-map', gulp.series( function () {
    return gulp.src(global.hugoConfig.stagingDir + '/js/**/*.js.map')
        .pipe(gulp.dest(global.hugoConfig.srcDir + '/static/js'));
}));

gulp.task('revision', gulp.series(gulp.parallel('styles', 'scripts', 'images', 'fonts'),'copy-js-map',function() {
    return gulp.src(
        [
            global.hugoConfig.stagingDir + '/css/**/*.css',
            global.hugoConfig.stagingDir + '/js/**/*.js',
            global.hugoConfig.stagingDir + '/img/**/*.*'
        ],
        {base: global.hugoConfig.stagingDir})
        .pipe(rev())
        .pipe(gulp.dest(global.hugoConfig.srcDir + '/static'))
        // TODO: can't use global.hugoConfig.stagingDir as manifest path is relative to base dir, not current dir
        .pipe(rev.manifest('../../../../target/site/staging/rev-manifest.json'))
        .pipe(del({dest: global.hugoConfig.srcDir + '/static', force: true}))
        .pipe(gulp.dest(global.hugoConfig.srcDir + '/static'));
}));
