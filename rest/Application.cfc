component {

    this.name = "test";
    this.sessionManagement = true;
    function onApplicationStart() {
        // Initialize the REST application
        RestInitApplication(dirpath="D:\projects\Lucee_Core_dev\lucee_Testbox\test\testcases\new\test\rest", serviceMapping='test', default=true, password="password");
    }

}