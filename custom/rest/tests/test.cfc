component extends="org.lucee.cfml.test.LuceeTestCase" labels="rest" {

    variables.localhost="http://127.0.0.1:8888";
    request.SERVERADMINPASSWORD = "admin"
    function run( testResults , testBox ) {
        describe( title="rest mapping tests", body=function() {
            it(title="rest mapping", body = function( currentSpec ) {
                RestInitApplication(expandPath("./"), '/test', false, request.SERVERADMINPASSWORD);
                http url="#localhost#/rest/test/test/check" result="local.result";
                expect( local.result.filecontent ).toBe('"success"');
                expect( local.result.status_code ).toBe(200);
            });
        });
    }
}
