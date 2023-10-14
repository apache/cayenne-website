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

const gulp 		 = require('gulp');
const sass 		 = require('gulp-sass')(require('sass'));
const autoprefixer = require('gulp-autoprefixer');
const cleancss 	 = require('gulp-clean-css');
const merge 	 = require('merge-stream');
const concat 	 = require('gulp-concat');
require("./util.js");

gulp.task('styles', gulp.series('clean-static', function() {
    const scssStream = gulp.src('styles/**/*.scss')
        .pipe(sass())
        .pipe(concat('scss-files.css'));

    const cssStream = gulp.src('styles/**/*.css')
        .pipe(concat('css-files.css'));

    return merge(scssStream, cssStream)
        .pipe(autoprefixer('last 2 version'))
		.pipe(cleancss({advanced:false}))
        .pipe(concat('styles.css'))
        .pipe(gulp.dest(global.hugoConfig.stagingDir + '/css'));
}));
