// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    
    func buildLane() {
        desc("Этот лейн билдит проект")
        scan(
            derivedDataPath: "derivedData",
            buildForTesting: .fastlaneDefault(true)
        )
    }
    
    func unitTestLane() {
    desc("Этот лейн прогоняет юнит тесты")
        scan(
            onlyTesting: "GitHubActionsTests",
            derivedDataPath: "derivedData",
            testWithoutBuilding: .fastlaneDefault(true)
        )
    }
    
    func uiTestLane() {
        desc("Этот лейн прогоняет ui тесты")
        scan(
            onlyTesting: "GitHubActionsUITests",
            derivedDataPath: "derivedData",
            testWithoutBuilding: .fastlaneDefault(true)
        )
    }
    
}
