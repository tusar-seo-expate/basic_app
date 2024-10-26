class AppConfig{
  static String appName ="Basic App";//Rename it with your app name

  static const bool https = false;//Make it true if your domain support https otherwise make it false
  // static const bool https = true;//Make it true if your domain support https otherwise make it false
  static const domain = "192.168.80.123:8000"; //If you want to connect with local host provide your ip address instead localhost
  // static const domain = "jobportal.devseoebd.com"; //If you want to connect with your server replace it with your domain name
  //
  //Don't try change below values
  static const String apiEndPath = "api";
  static const String protocol = https ? "https://" : "http://";
  static const String baseUrl = protocol+ domain;
  static const String apiUrl = "$baseUrl/$apiEndPath";
  static const String employerApiUrl = "$baseUrl/$apiEndPath/employer";
  static const String jobSeekerApiUrl = "$baseUrl/$apiEndPath/jobseeker";
  static const String public_assets = "$baseUrl/assets/images";
  static const String support_assets = "$baseUrl/assets/suppot";

}