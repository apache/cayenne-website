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
const gulp = require('gulp');
const childProcess = require('child_process');
require("./revision.js");

async function runHugo(publish) {

    const hugo = await import('hugo-bin');

    const src = global.hugoConfig.srcDir;
    const dst = global.hugoConfig.publicDir;
    const conf = global.hugoConfig.srcDir + 'config.yaml';
    const argv = require('yargs').argv;

    let cmd = hugo.default + ' --config=' + conf + ' -s ' + src + ' -d ' + dst;

    if (publish) {
        cmd += ' --baseUrl="' + argv.prod_host + '" ';
    } else {
        cmd += ' --baseUrl="http://' + argv.host + ':' + argv.port + '/" '
            + ' --buildDrafts=true --verbose=true --buildFuture';
    }

    console.log("Running " + cmd);
    const result = childProcess.execSync(cmd, {encoding: 'utf-8'});
    console.log('hugo out: \n' + result);
}

gulp.task('hugo:all', gulp.series('revision', function(done) {
    runHugo(false);
    done();
}));

gulp.task('hugo:publish', gulp.series('revision', function(done) {
    runHugo(true);
    done();
}));
