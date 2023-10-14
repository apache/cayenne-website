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

const gulp     = require('gulp');
const changed  = require('gulp-changed');
require("./util.js");

async function configImage() {
    const imagemin = (await import("gulp-imagemin")).default;
    return new Promise(function (resolve, reject) {
                                   gulp.src('images/**/*.*')
                                        .pipe(changed(global.hugoConfig.stagingDir + '/img'))
                                        .pipe(imagemin())
                                        .pipe(gulp.dest(global.hugoConfig.stagingDir + '/img'))
                                        .on('finish', resolve)
                                        .on('error', reject);
                                   });}

gulp.task('images', gulp.series('clean-static', function(done) {
                                                  configImage().then(function () { done();})
    }));
