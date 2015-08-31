import Foundation

func input() -> String? {
	let inputData = NSFileHandle.fileHandleWithStandardInput().availableData
	if let inputString = NSString(data:inputData, encoding:NSUTF8StringEncoding) {
		return inputString as String
	} else {
		return nil
	}
}

if let inString = input() {
	let numbers = inString.characters.dropLast().split{$0 == " "}.map(String.init)
	let n1 = Int(numbers[0])!
	let n2 = Int(numbers[1])!
	print(n1+n2)
} else {
	print("Failed reading input")
}
