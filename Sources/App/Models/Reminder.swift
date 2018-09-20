
import Vapor
import FluentSQLite

final class Reminder: Codable {
    var id: Int?
    var title: String
    var content: String
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}

extension Reminder: SQLiteModel {}
extension Reminder: Migration {}    //Create Table
extension Reminder: Content {}
