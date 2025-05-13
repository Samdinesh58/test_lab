component {

    this.name = "test";
    this.sessionManagement = true;
    function onApplicationStart() {
        // Initialize the REST application
        RestInitApplication(dirpath=expandPath('./test'), serviceMapping='test', default="true", password="password");
    }

}
