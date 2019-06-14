Node.js application to test connecting to a database with the <a href="https://www.npmjs.com/package/oracledb">oracledb npm package</a>.
I'm using this primarily to test connections on a server that does not have node installed but will run containers with node and the oracledb package. This also serves as an example of how to configure the oracle drivers in a docker contianer.

This can simply be run with the docker image <a>njwallace315/oracle-test</a> or it can be modified and built from this repo.

There is a script that will handle the setup of the oracle instanclient drivers which are included in this repo.

To run from docker image with an environment file:  
    1. Create an environment file "oracle.env" with the following variables as they pretain to the mssql package.  
        <ul>
        - server  
        - service  
        - username  
        - password
        </ul>
    2. place that file in a folder that can be used as a shared volume with the docker container.  
    3. Run the image with "
        ```sh
            docker run -v <path to oracle.env on host>:/volume -e ENV_PATH=/volume njwallace315/oracle-test
        ``` "
