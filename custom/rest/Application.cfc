component {

    this.name = "wd";
    this.sessionManagement = true;
    request.SERVERADMINPASSWORD = "password";
    // The onApplicationStart() method should be properly placed inside the component.
    function onApplicationStart() {
writeOutput(expandPath('/test'))
        RestInitApplication(dirpath=expandPath('test/'), serviceMapping='test', default="true", password="#request.SERVERADMINPASSWORD#");
    }

}
