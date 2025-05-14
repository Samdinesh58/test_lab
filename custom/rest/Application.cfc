component {
  function onApplicationStart() {
    // Retrieve GitHub secret from environment variable
    request.SERVERADMINPASSWORD = "password";
    
    // Initialize REST app
    RestInitApplication(
      dirpath = expandPath("test/"),
      serviceMapping = "test",
      default = true,
      password = request.SERVERADMINPASSWORD
    );
  }
}
