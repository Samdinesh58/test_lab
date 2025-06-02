component extends="org.lucee.cfml.test.LuceeTestCase" labels="rest" {

    variables.localhost="http://127.0.0.1:8888";
    variables.adminPassword = "admin123";
    function checkPassword() {
		try {
			admin action="connect"
					type="server"
					password="admin";
		} catch ( e ) {
            systemOutput( "password not set yet", true );
			return false;
		}
		return true;
	}
    // if (!checkPassword() ) {
	// 	systemOutput( "try updatePassword", true );
	// 	admin
	// 		action="updatePassword"
	// 		type="server"
	// 		oldPassword=""
	// 		newPassword="#variables.adminPassword#";
	// }

	if (!checkPassword() ) {
		systemOutput( "try writing password to #expandPath('{lucee-server}/password.txt')#", true );
		fileWrite( expandPath('{lucee-server}/password.txt'), "admin" );

		systemOutput( "check password", true );
		admin
			action="checkPassword"
			type="server";	
	}
    function run( testResults , testBox ) {
        describe( title="rest mapping tests", body=function() {
            it(title="rest mapping", body = function( currentSpec ) {
				//create a rest mapping
                RestInitApplication(expandPath("./"), '/test', false, "admin");

                http url="#localhost#/rest/test/test/check" result="local.result";
                expect( local.result.filecontent ).toBe('"success"');
                expect( local.result.status_code ).toBe(200);
            });
        });
    }
}
