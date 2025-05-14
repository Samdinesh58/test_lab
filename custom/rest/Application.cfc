component {
  function onApplicationStart() {
    // Retrieve GitHub secret from environment variable
    request.SERVERADMINPASSWORD = createObject("java", "java.lang.System")
      .getenv("SERVERADMIN_PASSWORD");
    
    // Initialize REST app
    RestInitApplication(
      dirpath = expandPath("test/"),
      serviceMapping = "test",
      default = true,
      password = request.SERVERADMINPASSWORD
    );
  
}

