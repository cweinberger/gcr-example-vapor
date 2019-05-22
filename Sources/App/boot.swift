import Vapor

internal struct ContainerInfo: Content {
    static let date: Date = Date()
    static let containerID: Int = Int.random(in: 0...Int.max)

    let creationDate = ContainerInfo.date
    let currentDate = Date()
    let uuid = ContainerInfo.containerID
}

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // Your code here
    _ = ContainerInfo()
}
