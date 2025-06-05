component extends="org.lucee.cfml.test.LuceeTestCase" labels="rest" {

    variables.localhost="http://127.0.0.1:8888";
    variables.adminPassword = "password";
    function checkPassword() {
		try {
			admin action="connect"
					type="server"
					password=variables.adminPassword;
		} catch ( e ) {
            systemOutput( "password not set yet", true );
			return false;
		}
        systemOutput( "password now set", true );
		return true;
	}
    // if (!checkPassword() ) {
	// 	systemOutput( "try updatePassword", true );
	// 	try{
    //     admin
	// 		action="updatePassword"
	// 		type="server"
	// 		oldPassword=""
	// 		newPassword="password";
    //     } catch( e ) {
    //         systemOutput( "updatePassword failed: #e.message#", true );
    //     }
      
	// }

	// if (!checkPassword() ) {
	// 	systemOutput( "try writing password to #expandPath('{lucee-server}/password.txt')#", true );
	// 	fileWrite( expandPath('{lucee-server}/password.txt'), variables.adminPassword );

	// 	systemOutput( "check password", true );
	// 	admin
	// 		action="checkPassword"
	// 		type="server";	
	// }
    function run( testResults , testBox ) {
        describe( title="rest mapping tests", body=function() {
            it(title="rest mapping", body = function( currentSpec ) {
				//create a rest mapping
                RestInitApplication(expandPath("./"), '/test', false, variables.adminPassword);

                http url="#localhost#/rest/test/test/check" result="local.result";
                expect( local.result.filecontent ).toBe('"success"');
                expect( local.result.status_code ).toBe(200);
            });
        });
    }
}
