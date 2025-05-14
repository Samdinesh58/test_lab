component {

    this.name = "wd";
    this.sessionManagement = true;

    // The onApplicationStart() method should be properly placed inside the component.
    function onApplicationStart() {
        writeDump(expandPath('./rest'))
        RestInitApplication(dirpath=expandPath('./rest'), serviceMapping='test', default="true", password="#request.SERVERADMINPASSWORD#");
    }

}
