import Foundation

class GameUpdaterViewModel: ObservableObject {
  @Published var latestGameVersion = 0

  var gameUpdater: XsollaUpdater = XsollaUpdater("Star Trek Fleet Command")

  @MainActor
  func fetchLatestGameVersion() async -> Int {
    latestGameVersion = try! await gameUpdater.latestGameVersion()
    return latestGameVersion
  }

  @MainActor
  func checkForGameUpdate() async -> Bool {
    return await gameUpdater.checkForUpdateAvailable()
  }

  @MainActor
  func updateGame() async throws {
    try await gameUpdater.updateGame()
  }
}
