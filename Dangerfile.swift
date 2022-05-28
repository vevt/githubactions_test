import Danger
let danger = Danger()

message("!!!!Highlight something in the table!!!!!!")
warn("WARM")


// Loop through all new files, then
let swiftFilesWithCopyright = danger.git.createdFiles.filter {
  $0.fileType == .swift && danger.utils.readFile($0).contains("//  Created by")
}

if swiftFilesWithCopyright.count > 0 {
    let files = swiftFilesWithCopyright.joined(separator: ", ")
    warn("In Danger JS we don't include copyright headers, found them in: \(files)")
}

let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles
let swiftFilesWithTODO = allSourceFiles.filter {
    $0.fileType == .swift && danger.utils.readFile($0).contains("TODO")
}

if !swiftFilesWithTODO.isEmpty {
    warn("В нашем проекте мы не пушим TODO-хи. Обнаружены в: \(swiftFilesWithTODO)")
}





//
//// You can use these functions to send feedback:
//message("Highlight something in the table")
//warn("Something pretty bad, but not important enough to fail the build")
//fail("Something that must be changed")
//
//markdown("Free-form markdown that goes under the table, so you can do whatever.")
