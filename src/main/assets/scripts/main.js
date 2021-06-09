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

require('bootstrap/js/dist/tab');
require('bootstrap/js/dist/collapse');
require('bootstrap/js/dist/dropdown');
require('bootstrap/js/dist/scrollspy');

var anchorJS = require('anchor-js');

var hljs     = require('highlight.js/lib/highlight.js');
var xml      = require('highlight.js/lib/languages/xml.js');
var java     = require('highlight.js/lib/languages/java.js');
var sql      = require('highlight.js/lib/languages/sql.js');
var groovy   = require('highlight.js/lib/languages/groovy.js');
var bash     = require('highlight.js/lib/languages/bash.js');

function initHljs() {
    hljs.registerLanguage('xml',    xml);
    hljs.registerLanguage('java',   java);
    hljs.registerLanguage('sql',    sql);
    hljs.registerLanguage('groovy', groovy);
    hljs.registerLanguage('bash',   bash);
    hljs.initHighlightingOnLoad();
}

function initGitHubBadge() {
    var ghUrl = "https://api.github.com/repos/apache/cayenne";
    $.getJSON(ghUrl, function ghCallback(ghData) {
        $(".stargazers_count").text(ghData.stargazers_count || '');
    });
}

function initAnchors() {
    var anchors = new anchorJS();
    anchors
        .add(".cd-content h2")
        .add(".cd-content h3")
        .add(".cd-content h4")
        .add(".cd-content h5")
        .add(".cd-content h6");
}

$(document).ready(function () {
    initAnchors();
    initGitHubBadge();
});

initHljs();

