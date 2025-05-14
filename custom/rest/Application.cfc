component {

    this.name = "wd";
    this.sessionManagement = true;
    request.SERVERADMINPASSWORD = "password";
    // The onApplicationStart() method should be properly placed inside the component.
    function onApplicationStart() {
        RestInitApplication(dirpath=expandPath('/rest'), serviceMapping='test', default="true", password="#request.SERVERADMINPASSWORD#");
    }

}
