component extends="org.lucee.cfml.test.LuceeTestCase" labels="rest" {

	variables.localhost="http://127.0.0.1:8888";

	function run( testResults , testBox ) {
		describe( title="rest mapping tests", body=function() {
			it(title="rest mapping", body = function( currentSpec ) {
				http url="#localhost#/rest/test/ext" result="local.result";
				var wsdl = result.filecontent ?: "";
				expect( wsdl ).toBeTrue();
			});
		});
	}
}
