component {

    this.name = "wd";
    this.sessionManagement = true;
    request.SERVERADMINPASSWORD = createObject("java", "java.lang.System").getenv("SERVERADMINPASSWORD");
    // The onApplicationStart() method should be properly placed inside the component.
    function onApplicationStart() {
echo(expandPath('/test'))
        RestInitApplication(dirpath=expandPath('test/'), serviceMapping='test', default="true", password="webweb");
    }

}
