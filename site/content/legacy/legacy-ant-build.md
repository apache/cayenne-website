+++
title = "Legacy Ant Build"
+++
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements. See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to you under the Apache License, Version
  2.0 (the "License"); you may not use this file except in compliance
  with the License. You may obtain a copy of the License at
 
  https://www.apache.org/licenses/LICENSE-2.0 Unless required by
  applicable law or agreed to in writing, software distributed under the
  License is distributed on an AS IS BASIS, WITHOUT WARRANTIES OR
  CONDITIONS OF ANY KIND, either express or implied. See the License for
  the specific language governing permissions and limitations under the
  License.
-->


This procedure applies to versions 1.2 and 2.0 that are built with Ant. To
build Cayenne with Ant, check out the appropriate source code branch from
Subversion and perform the following command to see available targets:


    # cd cayenne/cayenne-ant
    # ant help


Required ant version - 1.6.* or newer; required JDK version - 1.5.* or
newer. Note that compiled binaries are JDK 1.4 compatible, still JDK 1.5 is
needed to build a few extensions.
