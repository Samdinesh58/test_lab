component {

    this.name = "test";
    this.sessionManagement = true;
    function onApplicationStart() {
        // Initialize the REST 
        request.SERVERADMINPASSWORD = "admin";
        RestInitApplication(dirpath=expandPath('./'), serviceMapping='test', default="true", password=request.SERVERADMINPASSWORD);
    }

}
