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

const gulp    = require('gulp');
const jshint  = require('gulp-jshint');
const uglify  = require('gulp-uglify');
const webpack = require('webpack'); // use newer version of webpack
const gulpWebpack  = require('webpack-stream');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

gulp.task('scripts', gulp.series('clean-static', function() {
    return gulp.src('scripts/**/*.js')
        .pipe(jshint())
        .pipe(jshint.reporter("default"))
        .pipe(gulpWebpack({
                output: {
                    filename: 'bundle.js'
                },
                plugins: [
                    // provide required objects
                    new webpack.ProvidePlugin({
                        $: 'jquery',
                        jQuery: 'jquery',
                        'window.jQuery': 'jquery',
                        Popper: ['popper.js', 'default'],
                        Util: "exports-loader?Util!bootstrap/js/dist/util"
                    }),
                    new UglifyJsPlugin({
                        sourceMap: true
                    })
                ],
                devtool: "source-map"
        }, webpack))
        .pipe(gulp.dest(global.hugoConfig.stagingDir + '/js'));
}));
