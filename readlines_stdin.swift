import Foundation

func input() -> String? {
	let inputData = NSFileHandle.fileHandleWithStandardInput().availableData
	if let inputString = NSString(data:inputData, encoding:NSUTF8StringEncoding) {
		return inputString as String
	} else {
		return nil
	}
}


if let linesString = input() {
	print(linesString)
	let lines = Int(String(linesString.characters.dropLast()))!
	for i in (1...lines) {
		if let numbersString = input() {
			let numbers = numbersString.characters.dropLast().split{$0 == " "}.map(String.init)
			let n1 = Int(numbers[0])!
			let n2 = Int(numbers[1])!
			print(n1+n2)
		}
	}
} else {
	print("Failed reading input")
}
