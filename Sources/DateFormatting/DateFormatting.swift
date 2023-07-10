import Foundation

@main
public struct DateFormatting {
    
    private static var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }

    public static func main() {
        let date = formatter.date(from: "01/01/2022")

        print(DateFormatting().formatDate(date: date!))
    }

    func formatDate(date: Date) -> String {
        return DateFormatting.formatter.string(from: date)
    }

    func dateFromString(dateString: String) -> Date? {
        return DateFormatting.formatter.date(from: dateString)
    }
}
