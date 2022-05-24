// AppDelegate.swift

//
// Import the Library
//
import LineLogin

//
// Setup the plugin using your CHANNEL_ID when the app finishes launching
//
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    LineLogin.setup(channelID: "1655549184", universalLinkURL: nil)

    return true
}

//
// Handle redirection back to the app from Line
//
func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    return LineLogin.application(app, open: url, options: options)
}