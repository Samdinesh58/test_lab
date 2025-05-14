component {

    this.name = "wd";
    this.sessionManagement = true;
    request.SERVERADMINPASSWORD = "password";
    // The onApplicationStart() method should be properly placed inside the component.
    function onApplicationStart() {
        RestInitApplication(dirpath="/home/runner/work/test_lab/custom/rest/test", serviceMapping='test', default="true", password="#request.SERVERADMINPASSWORD#");
    }

}
