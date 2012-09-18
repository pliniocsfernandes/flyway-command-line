#!/bin/bash
#
# Copyright (C) 2010-2011 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Set the current directory to the installation directory
INSTALLDIR="/opt/flyway"

# Set the migrations relative path to be used
MIGRATIONS_PATH="db/migration"

# Use JAVA_HOME if it is set
if [ -z $JAVA_HOME ]; then
 JAVA_CMD=java
else
 JAVA_CMD=$JAVA_HOME/bin/java
fi

#$JAVA_CMD -cp bin/flyway-commandline-1.7.jar:bin/flyway-core-1.7.jar:bin/spring-jdbc-2.5.6.jar:bin/commons-logging-1.1.1.jar:bin/spring-beans-2.5.6.jar:bin/spring-core-2.5.6.jar:bin/spring-context-2.5.6.jar:bin/aopalliance-1.0.jar:bin/spring-tx-2.5.6.jar:bin/log4j-1.2.16.jar:$path com.googlecode.flyway.commandline.Main $@
FLYWAY_ARGS="-cp $INSTALLDIR/bin/flyway-commandline-1.7.jar:$INSTALLDIR/bin/flyway-core-1.7.jar:$INSTALLDIR/bin/spring-jdbc-2.5.6.jar:$INSTALLDIR/bin/commons-logging-1.1.1.jar:$INSTALLDIR/bin/spring-beans-2.5.6.jar:$INSTALLDIR/bin/spring-core-2.5.6.jar:$INSTALLDIR/bin/spring-context-2.5.6.jar:$INSTALLDIR/bin/aopalliance-1.0.jar:$INSTALLDIR/bin/spring-tx-2.5.6.jar:$INSTALLDIR/bin/log4j-1.2.16.jar"

$JAVA_CMD $FLYWAY_ARGS:$MIGRATIONS_PATH com.googlecode.flyway.commandline.Main $@

# Save the exit code
JAVA_EXIT_CODE=$?

# Exit using the same code returned from Java
exit $JAVA_EXIT_CODE
