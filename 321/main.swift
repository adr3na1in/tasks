import Foundation

//1)    C консоли вводится целое число (год). Определить, является ли год високосным. Високосные года делятся нацело на 4. Однако из этого правила есть исключение: столетия, которые не делятся нацело на 400, високосными не являются. В високосном годе 366 дней, в обычном 365.
//a) Если год не делится на 4, значит он обычный.
//b) Иначе надо проверить не делится ли год на 100.
//c) Если не делится, значит это не столетие и можно сделать вывод, что год високосный.
//d) Если делится на 100, значит это столетие и его следует проверить его делимость на 400.
//e) Если год делится на 400, то он високосный.
//f) Иначе год обычный.



//guard let input = readLine(), let inputYear = Int(input) else { fatalError() }
//if inputYear % 4 != 0{
//    print("обычный")
//}
//else {
//    if inputYear % 100 != 0 {
//        print("високосный")
//    }
//    else {
//        if inputYear % 400 == 0 {
//            print("високосный")
//        }
//        else {
//            print("Обычный")
//        }
//    }
//}
    
//4)    С консоли вводятся числа n и m. Требуется вывести на экран таблицу умножения всех чисел с 1 до m на число n
//if let input1 = readLine(), let inputNumN = Int(input1), let input2 = readLine(), let inputNumM = Int(input2)  {
//    for number in 1...inputNumM {
//        print("\(number)*\(inputNumM) = \(number*inputNumN)")
//    }
//}
//4)    С консоли вводятся числа n и m. Требуется вывести на экран таблицу умножения всех чисел с 1 до m на число n
//9)    С консоли вводится число n. Требуется вывести на экран все степени двойки, начиная с 0-й степени, и заканчивая n-1 степенью.
//Пример ввода:
//5
//Пример вывода:
//1 2 4 8 16

//var num = 1
//if let input = readLine(), let inputNum = Int(input) {
//    for _ in 0...(inputNum-1) {
//        print(num, terminator: " ")
//        num *= 2
//    }
//}
//14)    С консоли вводится целое число n. Далее вводится n строк. Нужно вывести все введенные строки в консоль через пробел.
//Пример ввода:
//3
//ааа
//ббб
//ссс
//Пример вывода:
//ааа ббб ссс
//var output = String()
//if let inputN = readLine(), let num = Int(inputN) {
//    for _ in 1...num {
//        if let inputS = readLine() {
//            output += (inputS + " ")
//        }
//    }
//}
//print(output)
//16)    С консоли вводится число n. Требуется посчитать сумму всех степеней двойки (с 0-й степени до n-1 степени) и вывести ее в специальном формате
//Пример ввода:
//5
//Пример вывода:
//1 + 2 + 4 + 8 + 16 = 31
//
//var num = 1
//var sum = Int()
//var numStr = String()
//if let input = readLine(), let inputNum = Int(input) {
//    for i in 0...(inputNum-1) {
//        if i < (inputNum-1) {
//            numStr += ("\(num) + ")
//        }
//        else {
//            numStr += "\(num)"
//        }
//        sum += num
//        num *= 2
//    }
//}
//print(numStr, "=" ,sum)
//3)    Создайте массив целых чисел. Требуется заполнить его числами от 1 до 1000 с шагом в единицу (т. е. 1, 2, 3, 4 .... 1000). И вывести его на экран в столбец.

//var array = [Int]()
//for i in 1...1000 {
//    array.append(i)
//}
//for i in array {
//    print(i)
//}

//8)    С консоли вводится число n. Создать массив размерности n * 2, создающийся по особому правилу: например если ввести число 5, то должен сгенерироваться массив [1, 1, 3, 3, 5, 5, 7, 7, 9, 9]
//if let input = readLine(), let num = Int(input) {
//    var array = [Int]()
//    var num1 = 1
//    for _ in 0..<num {
//        array.append(num1)
//        array.append(num1)
//        num1 += 2
//    }
//    print(array)
//}

//Последовательность Фибоначчи определяется так:
//первое число = 0
//второе число = 1,
// …,
// n число = (n-1 число) + (n-2 число).
//По данному числу N определите N-е число Фибоначчи F(N).
//1 = 0
//2 = 1
//3 = 1
//4 = 2
//5 = 3
//6 = 5
//7 = 8
//8 = 13
//var prevPrevN = 0
//var prevN = 1
//var currentN = Int()
//if let inputN = readLine(), let n = Int(inputN) {
//    for _ in 3...n {
//      currentN = prevPrevN + prevN
//        prevPrevN = prevN
//        prevN = currentN
//    }
//}
//print(currentN)
//
//var array = [Int]()
//var sum = Int()
//
//var number = 1
//    while number != 0 {
//        if let input = readLine(), let num = Int(input) {
//            number = num
//            array.append(number)
//        }
//    }
//array.removeLast()
//for element in array {
//    sum += element
//}
//var n = array.count
//var s = Double(sum)/Double(array.count)
//var sqrSum = Double()
//for element in array {
//    sqrSum += (Double(element) - s) * (Double(element) - s)
//}
//var result = Double(sqrt(sqrSum/Double((n-1))))
//
//print(result)


//var array = [Int]()
//var number = 1
//var sum = Int()
//
//while number != 0 {
//    if let input = readLine(), let num = Int(input) {
//        number = num
//        array.append(number)
//
//    }
//}
//array.removeLast()
//for element in array {
//    sum += element
//}
//var n = array.count
//var s = Double(sum)/Double(n)
//
//print(s)
//С клавиатуры вводится целое число n. Далее создаётся массив размерности n и заполняется случайными числами. Нужно вывести массив на экран. Далее нужно посчитать количество элементов, кратных числу 3 и вывести результат на экран.
//var array = [Int]()
//if let input = readLine(), let inputNum = Int(input) {
//    for _ in 0..<inputNum {
//        array.append(Int(arc4random()))
//    }
//}
//print(array)
//print("числа кратные 3")
//var sum = 0
//for element in array {
//    if element % 3 == 0 {
//        sum += 1
//        print(element)
//
//    }
//}
//print("кол-во элементов кратных 3 равно \(sum)")
//15)    Дан массив чисел. Выведите все элементы массива, которые больше предыдущего элемента.

//var array = [Int]()
//if let input = readLine(), let inputNum = Int(input) {
//    for _ in 0..<inputNum {
//        array.append(Int.random(in: 0...50))
//    }
//}
//print(array)
//var current = Int()
//var next = Int()
//for index in 0..<array.count - 1 {
//    current = index
//    next = index + 1
//    if array[next] > array[current] {
//        print(array[next])
//    }
//}
//
//var array = [10, 20, 40, 55, 70, 30]
//var element = array[0]
//for index in 0..<array.count-1 {
//    array[index] = array[index + 1]
//}
//array[array.count-1] = element
//print(array)
//1
//11
//121
//1331
//14641
//15101051
//1615201561
//22)    С консоли вводится целое число n. Требуется вывести на экран треугольник Паскаля до числа n.

//10)    С консоли вводится строка. Далее пользователь вводит целое число N. Далее идёт N целых чисел - индексы элементов. Нужно вывести на экран все элементы строки по этим индексам
//
//var arrayIndex = [Int]()
//if let str = readLine(), let inputN = readLine(), let num = Int(inputN) {
//    for _ in 0..<num {
//        if let input = readLine(), let indexNum = Int(input) {
//            arrayIndex.append(indexNum)
//        }
//    }
//    for i in arrayIndex {
//        if str.count > i {
//        print(str[str.index(str.startIndex, offsetBy: i)])
//        }
//        else { print("нет символа под номером \(i)")}
//    }
//
//}
//2)    С консоли вводится символ. Если символ является заглавной буквой - вывести на экран "Заглавная буква", если же символ является прописной буквой - вывести на экран "Прописная буква", если же символ является цифрой - вывести "Цифра", а если не подходи ни под какое условие - вывести "Другой символ"
//print("введите один символ")
//if let input = readLine() {
//    if input.count != 1 {
//        print("введено не правильное кол-во символов")
//    }
//    else {
//        if ("A"..."Z").contains(input) {
//            print("заглавная буква")
//        } else if ("a"..."z").contains(input) {
//            print("прописная буква")
//        } else if ("0"..."9").contains(input) {
//            print("число")
//        } else { print("другой символ") }
//
//    }
//    }


//2)    С консоли вводится пароль пользователя. Требуется проверить пароль на корректность. Он должен удовлетворять всем требованиям:
//a.    Пароль должен содержать хотя бы одну заглавную латинскую букву
//b.    Пароль должен содержать хотя бы одну маленькую латинскую букву
//c.    Пароль должен содержать хотя бы одну цифру
//d.    Пароль должен быть не короче 5-и символов, но и не длиннее 15-и
//e.    Пароль не должен содержать никаких символов, кроме латинских букв и цифр
//f.    Ни один символ в пароле не должен повторяться

//if let input = readLine() {
//    var resultUpperCase = Bool(false)
//    var resultDownCase = Bool(false)
//    var resultNumber = Bool(false)
//    var countPassword = Bool(false)
//    var containsLatinNum = Bool(true)
//    var uniqPass = Bool(false)
//    var arrayElementPass = [String.Element]()
//
//    for element in input {
//
//        if ("A"..."Z").contains(element) {
//            resultUpperCase = true
//        }
//        if ("a"..."z").contains(element) {
//            resultDownCase = true
//        }
//        if ("0"..."9").contains(element) {
//            resultNumber = true
//        }
//    }
//    if input.count >= 5 && input.count <= 15 {
//        countPassword = true
//    }
//    for element in input {
//        let array = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")
//        if !(array).contains(element) {
//            containsLatinNum = false
//        }
//    }
//    for element in input {
//        if arrayElementPass.contains(element) {
//        }
//            else {
//                arrayElementPass.append(element)
//        }
//    }
//    if arrayElementPass.count == input.count {
//        uniqPass = true
//    }
//    if resultUpperCase && resultDownCase && resultNumber && countPassword && containsLatinNum && uniqPass {
//        print("correct password")
//    }
//        else  { print("incorrect password") }
//    }
//16)    С консоли вводится строка. Проверить, удовлетворяет ли она условиям: содержит в себе "@gmail.com" или "@mail.ru", нет ли лишних символов (должны быть только символы латинского алфавита, "@" и "."), также удостовериться, что символ "@" и "." встречается только по одному разу



//let mail1 = "@gmail.com"
//let mail2 = "@mail.ru"
//var countA = 0
//var countDot = 0
//var containsMail = false
//var repeatA = false
//var repatDot = false
//var latinSymbNum = true
//if let input = readLine() {
//    if input.contains(mail1) || input.contains(mail2) {
//        containsMail = true
//    }
//    for element in input {
//        if element == "@" {
//            countA += 1
//        }
//    }
//    if  countA == 1 {
//        repeatA = true
//    }
//    for element in input {
//        if element == "." {
//            countDot += 1
//        }
//    }
//    if countDot == 1 {
//        repatDot = true
//    }
//    for element in input {
//        let array = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@.")
//        if !(array).contains(element) {
//            latinSymbNum = false
//        }
//    }
//    if containsMail && repeatA && repatDot && latinSymbNum {
//        print("correct e-mail")
//    } else { print("incorrect") }
//}

//17)    С консоли вводится российский номер телефона. Нужно проверить, удовлетворяет ли он правилам: начинается с +7, в номере должно быть 11 цифр, три цифры после +7 должны быть заключены в круглые скобки, после следующих трех и за ними после еще двух цифр должен стоять дефис. То есть номер должен выглядеть, например, как «+7(999)123-45-67». Если номер телефона удовлетворяет всем критериям, то нужно вывести “correct”, иначе “incorrect”            0 1 2 6 10 13
//var lenghtNum = false
//var number = false
//if let input = readLine() {
//    if input.count != 16 {
//        print("введите номер в формате +7(123)456-78-90»")
//    }
//    else {
//        lenghtNum = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 0)] == "+"  {
//       number = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 1)] == "7"  {
//       number = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 2)] == "("  {
//       number = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 6)] == ")"  {
//       number = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 10)] == "-"  {
//        number = true
//    }
//    if input[input.index(input.startIndex, offsetBy: 13)] == "-"  {
//        number = true
//    }
//    for element in input {
//        let array = Array("+()-0123456789")
//        if !(array).contains(element) {
//            number = false
//        }
//    }
//}
//if number && lenghtNum {
//    print("corret")
//}
//else {
//    print("incorrect")
//}
//2)    Создайте словарь, в котором ключами будут числа от 100 до 250, а значениями эти же числа, возведенные в куб.
//var dict = [Int: Int]()
//for element in 100...250 {
//    dict[element] = element*element*element
//}
//print(dict)
//Дан словарь, где в качестве ключей заданы месяцы, а в качестве значений – количество дней в месяце. Пользователь вводит в консоль месяц – требуется вывести на экран количество дней в этом месяце
//[“january”:  31, “february”: 28, “march”: 31, “april”: 30, “may”: 31, “june”: 30, “july”: 31, “august”: 31, “september”: 30, “october”: 31, “november”: 30, “december”: 31]

//let dict = ["january":  31, "february": 28, "march": 31, "april": 30, "may": 31, "june": 30, "july": 31, "august": 31, "september": 30, "october": 31, "november": 30, "december": 31]
//if let input = readLine() {
//    if let inputMonth = dict[input] {
//        print(inputMonth)
//    }
//    else {
//        print("!!!")
//    }
//}
//Создайте словарь из введённой с консоли строки таким образом: в качестве ключей выступаю буквы, в качестве значений – сколько раз буква встретилась в строке.
//Например, для строки "ababa" должен создаться словарь ["a": 3, "b": 2]

//
//Пользователь вводит с консоли строку, состоящую из цифр и букв. Нужно посчитать количество повторений каждой цифр в строке и вывести эти данные на экран. Например для строки “aaa01bbb22210cc02” должна быть выведена на экран информация [“0”: 3, “1”: 2, “2”: 4]
//var dict = [String.Element: Int]()
//if let input = readLine() {
//    for element in input {
//        if ("0"..."9").contains(element) {
//            if dict[element] == nil {
//                dict[element] = 0
//            }
//            dict[element]? += 1
//        }
//    }
//}
//print(dict)
//14)    С консоли вводится целое число n. Далее идёт n слов (каждое с новой строки), требуется создать словарь по такому принципу: в качестве ключа - слово, в качестве значения - количество повторений этого слова. Далее требуется обработать данные в словаре и выдать на экран следующее:
//a.    Вывести на экран весь словарь в формате “слово – количество повторений” (для каждого слова отдельная строка)
//b.    Вывести все слова, в которых есть заглавные буквы
//c.    Вывести все слова, которые встречались больше трёх раз
//d.    Вывести количество слов, в которых есть подстроки “@gmail.com” или “@mail.ru”


//var dict = [String: Int]()
//if let input = readLine(), let num = Int(input) {
//    for _ in 0..<num {
//        if let str = readLine() {
//            if dict[str] == nil {
//                dict[str] = 0
//            }
//            dict[str]? += 1
//        }
//    }
//
//}
//for pair in dict {
//    print(pair.key, pair.value, separator: " - ")
//}
//for element in dict.keys {
//    if ("A"..."Z").contains(element) {
//        print(element)
//    }
//}
//
//for pair in dict {
//    if pair.value > 3 {
//        print(pair.key)
//    }
//}
//var count = 0
//for pair in dict {
//    if ("@gmail.com").contains(pair.key) || ("@mail.ru").contains(pair.key) {
//        count += pair.value
//    }
//}
//print(count)
//15)    С консоли вводится целое число n. Далее вводится n пар строк (на первой строке имя студента, на второй средний бал за экзамены). Требуется создать словарь, в котором в качестве ключей будут имена студентов, а в качестве значений – их средний балл за экзамены.
//a.    Вывести на экран весь словарь в формате “имя: оценка” (для каждого студента новая строка)
//b.    Вывести на экран имена всех студентов, среднее арифметическое которых больше 4.5
//var dict = [String: Double]()
//if let input = readLine(), let n = Int(input) {
//    for _ in 0..<n {
//        if let name = readLine() {
//            if let inputMark = readLine(), let mark = Double(inputMark) {
//                dict[name] = mark
//            }
//        }
//    }
//}
//print(dict)
//1)    Пользователь вводит с консоли набор целых чисел (в одну строку, все числа разделены пробелами). Создайте словарь, в котором ключами будут числа, которые вводит пользователь, а значениями - сколько раз число повторялось.
//Например для строки "10 20 30 20 20 30" должен быть сформирован словарь [10: 1, 20: 3: 30: 2]
//var dict = [Int: Int]()
//if let input = readLine() {
//    let arrayNum = input.components(separatedBy: " ")
//    for element in arrayNum {
//        if let intNum = Int(element) {
//            if dict[intNum] == nil {
//                dict[intNum] = 0
//            }
//            dict[intNum]? += 1
//        }
//    }
//}
//print(dict)
//5)    Требуется написать функцию getAverage, которая принимает на вход 2 целых числа и возвращает среднее арифметическое этих чисел
//func getAverage(a: Double, b: Double) -> Double {
//    var s = Double()
//    s = (a + b) / 2
//    print(s)
//    return s
//
//}

//6)    Требуется написать функцию formateString, которая принимает в себя строку, делает все буквы заглавными, добавляет в конце и в начале строки символы “!”, и затем возвращает полученную строку как результат выполнения функции.
//func formateString(str: String) -> String {
//    var str1 = String()
//    str1 = str.uppercased()
//    print("!\(str1)!")
//    return str1
//}
//formateString(str: "asddfsfgfgfg")


//7)    Написать функцию getUppercased, которая принимает в себя массив строк и возвращает новый массив, созданный только из тех элементов, в которых есть хотя бы одна заглавная буква (например, если применить функцию к массиву [“AAA”, “aaa”, “AaA”], то она должна будет вернуть массив [“AAA”, “AaA”])

//func getUppercased(str: [String]) -> [String] {
//    var arr = [String]()
//
//    for element in str {
//        var count = 0
//      for char in element {
//            if ("A"..."Z").contains(char) {
//                count += 1
//            }
//        }
//        if count > 0 {
//            arr.append(element)
//        }
//    }
//    return arr
//}
//print(getUppercased(str: ["Aaas","aaDDa","Aaa","WWW","asa"]))
//15)    Написать функцию isPalindrom, которая принимает строку и возвращает true, если строка является палиндромом и false иначе. Палиндром – это строка, которая читается одинаково как слева направо, так и справа налево, то есть перевернутая строка равна изначальной строке
//func isPalindrom(str: String) -> Bool {
//    var palindrom = false
//    var count = 0
//    for index in 0..<str.count {
//        if str[str.index(str.startIndex, offsetBy: index)] == str[str.index(str.endIndex, offsetBy: -index-1)] {
//            count += 1
//        }
//    }
//    if count == str.count {
//        palindrom = true
//    }
//    return palindrom
//}
//
//print(isPalindrom(str: "kozak"))
//1)    Написать функцию getInclusionCount, которая принимает в себя строку (str) и массив строк. Функция должна возвращать количество элементов из массива, которые являются подстроками строки str. (например, для строки “aaabbbccc” и массива [“aa”, “ab”, “ba”, “cc”, “cb”] функция должна выяснить, что 0-й, 1-й и 3-й элементы массива являются подстроками “aaabbbccc”, поэтому функция должна будет вернуть число 3)
//func getInclusionCount(str: String, arr:[String]) -> Int {
//    var count = 0
//    for element in arr {
//        if str.contains(element) {
//            count += 1
//        }
//    }
//    return count
//}
//
//print(getInclusionCount(str: "aaaaaabbbcbbccc", arr: ["aa", "ab", "ba", "cc", "cb"]))


////23)    (Swift) Дан массив целых чисел. При помощи функции map создать из него новый массив, где каждый элемент заменён на его остаток от деления на число 5
//let array = [5, 12, 43, 12, 80, 10, 25, 36]
//array.map {$0 % 5}

//26)    (Swift) Дан массив целых чисел. Нужно превратить его в массив, где каждый элемент возведён в квадрат. Затем отфильтровать оттуда те элементы, которые делятся на 2 без остатка. А затем вывести его на экран в столбик
//array.map{$0 * $0}.filter{$0 % 2 == 0}.forEach{print($0)}

//    (Swift) Создать словарь, в котором в качестве ключа будут имена студентов, а в качестве значения массив оценок студентов за несколько предметов (то есть словарь будет типа [String: [Int]]. Добавить в словарь несколько студентов. Далее требуется:
//a.    Написать функцию printStudents, которая принимает в себя созданный выше словарь и выводит на экран всех студентов в формате:
//студент1: оценка1, оценка2, оценка3, …
//студент2: оценка1, оценка2, оценка3, …
//…
//Важно, что оценки для каждого студента должны быть выведены по убыванию (то есть сначала выводятся пятерки, затем четверки, тройки и в конце двойки)
//b.    Написать функцию printExcellentStudents, которая принимает в себя созданный выше словарь и выводит на экран имена тех студентов, среднее арифметическое оценок которых больше 4.5
//c.    Отсортировать словарь (в алфавитном порядке имен студентов) и вывести отсортированный словарь на экран
//let dict = [
//    "Андрей Иванов": [5, 4, 4, 5, 3],
//    "Сергей Фомин": [3, 3, 5, 4, 2],
//    "Николай Матвеев": [5, 5, 5, 4, 4],
//    "Илья Николаев": [3, 4, 5, 2, 3],
//    "Юрий Александров": [5, 5, 5, 5, 5]
//]
//func printStudent(dict:[String: [Int]]) {
//    dict.forEach{print($0.key, $0.value.sorted{$0 > $1}.map{String($0)}.joined(separator: ", "))}
//}
//
//func printExcellentStudent(dict:[String: [Int]]) {
//   dict
//        .filter{Double($0.value.reduce(into: 0, {$0 += $1})) / Double($0.value.count) > 4.5 }
//        .forEach{print($0.key)}
//
//}
//
//print(dict.sorted{$0.key < $1.key})


//printStudent(dict: dict)
//printExcellentStudent(dict: dict)

//1)    (Swift) Создать контейнер для хранения данных об авиарейсах. Данные о каждом рейсе должны состоять из номера рейса и модели самолета, который полетит этим рейсом. Пример номера рейса – 46312 (состоит из одного целого числа). Пример модели самолета – “Boeing 736” (состоит из наименования самолета и кода самолета, разделенных пробелом)
//a.    Добавить в контейнер несколько рейсов и распечатать их в таком виде:
//Номер1 – модель1
//Номер2 – модель2
//...
//b.    Распечатать их в отсортированном виде (сортировка по возрастанию номера рейса)
//c.    Посчитать и вывести на экран количество рейсов с пятизначным номером
//d.    Вывести на экран номера рейсов, в которых полетит самолет с наименованием «Ил»

//let dict = [
//    13456: "Boeing 747",
//    6547: "Sukchoy SuperJet",
//    886411: "Boeing 777",
//    19456: "Aerubus 555",
//    13756: "Il 76"
//]
//
//print(dict.filter { $0.key > 9999 && $0.key <= 99999 }.count)
//dict.filter { $0.value.contains("Il") }.forEach { print($0.key) }

//1)    Создать структуру Programmist. Прописать для нее поля: должность и уровень. Далее создать массив программистов с разными должностями и разными уровнями и продемонстрировать фильтрацию программистов из массива по разным должностям и разным уровням.
//struct Programmist {
//    let position: String
//    let level: Int
//}
//var arrayP = [Programmist]()
//arrayP.append(Programmist(position: "manager1", level: 1))
//arrayP.append(Programmist(position: "seo", level: 10))
//arrayP.append(Programmist(position: "general manager", level: 8))
//arrayP.append(Programmist(position: "nager", level: 4))
//arrayP.append(Programmist(position: "manager2", level: 1))
//print(arrayP.filter { $0.level == 1 })

//1)    Создать структуру Product (товар). Для товара должны быть свойства name(наименование), price (стоимость), width (ширина), height (высота), length (длинна). Требуется создать массив и добавить в него несколько товаров.
//a.    Вывести на экран информацию обо всех товарах из массива в алфавитном порядке. Для задачи требуется написать и использовать вспомогательный функционал gerDescription (или вычисляемое свойство description) для структуры, который будет возвращать строковое описание товара в формате “Name: <имя товара>, price: <цена товара>, dimensions: <габариты товара>”
//b.    Запросить у пользователя ввести минимальный и максимальный объем товара. Далее требуется вывести на экран название и стоимость всех товаров, объем которых входит в промежуток, введенный пользователем. Если же таких товаров нет, то нужно уведомить об этом пользователя. Для задачи требуется написать и использовать вспомогательный функционал getArea (или вычисляемое свойство area) для структуры.
//c.    Запросить у пользователя стоимость товара и вывести на экран все товары этой стоимости, если же таких товаров нет, то нужно уведомить пользователя об этом.
//
//struct Product {
//    let name: String
//    let price: Double
//    let width: Int
//    let height: Int
//    let lenght: Int
//
//    var discription: String {
//       "Name: \(self.name) price: \(self.price) dimensions: \(self.width), \(self.height), \(self.lenght)"
//    }
//
//    var area: Int {
//        self.width*self.height*self.lenght
//    }
//}
//
//var productList = [Product]()
//productList.append(Product(name: "TV", price: 1000, width: 10, height: 80, lenght: 120))
//productList.append(Product(name: "friedg", price: 500, width: 60, height: 200, lenght: 70))
//productList.append(Product(name: "washer", price: 300, width: 50, height: 100, lenght: 80))
//productList.append(Product(name: "sofa", price: 70, width: 50, height: 50, lenght: 50))
//productList.append(Product(name: "box", price: 2000, width: 300, height: 170, lenght: 120))
//
////productList.sorted{ $0.name.lowercased() < $1.name.lowercased()}.forEach{ print($0.discription) }
//if let inputMin = readLine(), let numMin = Int(inputMin) {
//    if let inputMax = readLine(), let numMax = Int(inputMax) {
//        productList.filter{ $0.area > numMin && $0.area < numMax }.forEach{print($0.discription)}
//
//        }
//    }
  

//Требуется описать сущность User. У него есть имя. Также User должен уметь отправлять Email какому-то другому юзеру и получать Email. Функционал отправки имейла должен только лишь отправлять имейл другому юзеру. Функционал получения имейла же должен печатать на экран информацию в формате "<Имя получателя> получил имейл от <Имя отправителя> с данными: <Вся информация из имейла>"
//Каждый пользователь должен хранить историю всех писем, которые он получил. Также в письме теперь должен фигурировать параметр "Имя отправителя"
//
//struct Email {
//    let letter : String
//    let senderName: String
//}
//
//class User {
//    let name: String
//    var history = [Email]()
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func send(email: Email, receiver: User) {
//        receiver.receive(email: email, sender: self)
//    }
//
//    func receive(email: Email, sender: User) {
//        self.history.append(email)
//        print("\(self.name) получил имейл от \(sender.name) с данными \(email.letter)")
//    }
//}
//let user1 = User(name: "Ivan")
//let user2 = User(name: "Oleg")
//
//user1.send(email: Email(letter: "qqqqqqqqq", senderName: user1.name), receiver: user2)
//user1.send(email: Email(letter: "aaaaaaaa", senderName: user1.name), receiver: user2)
//user1.send(email: Email(letter: "wwwwwwwww", senderName: user1.name), receiver: user2)
//user1.send(email: Email(letter: "cjfdglkjsth", senderName: user1.name), receiver: user2)
//
//print(user2.history)


//10)    Описать класс Book. Для него должны быть описаны свойства: заголовок, автор, текст, год издания. Описать класс Library. Он должен владеть функционалом: 1хранения произвольного количества книг, 2поиска книги по какому-либо признаку (например, по автору или по году издания), 3добавления книг в библиотеку, 4удаления книг из нее, 5сортировки книг по разным полям.

//class Book {
//    let title: String
//    let text: String
//    let year: Int
//
//    var discription: String {
//        "\(self.title), \(self.text), \(self.year)"
//    }
//
//    init(title: String, text: String, year: Int) {
//        self.title = title
//        self.text = text
//        self.year = year
//    }
//}
//
//class Library {
//    var books = [Book]()
//    func equalBooks(book1: Book, book2: Book) -> Bool {
//        return book1.title == book2.title && book1.text == book2.text && book1.year == book2.year
//    }
//
//    func searchBook(by parametrs: String) -> [Book] {
//        self.books.filter{ $0.title == parametrs || String($0.year) == parametrs }
//    }
//
//    func uploadBooks(book: Book) {
//        if !self.books.contains(where: { self.equalBooks(book1: $0, book2: book)}) {
//            self.books.append(book)
//        }
//    }
//
//    func deleteBooks(book: Book) {
//        if let index = self.books.firstIndex(where: { self.equalBooks(book1: $0, book2: book)}) {
//            self.books.remove(at: index)
//        }
//    }
//
//    func sorted() -> [Book]{
//        self.books.sorted{ $0.title < $1.title }
//    }
//}
//
//var lib = Library()
//let book1 = Book(title: "xz", text: "aaaa", year: 0)
//let book2 = Book(title: "aa", text: "ada", year: 1)
//let book3 = Book(title: "xz", text: "add", year: 4)
//let book4 = Book(title: "xz", text: "aaddd", year: 2)
//lib.uploadBooks(book: book1)
//lib.uploadBooks(book: book2)
//lib.uploadBooks(book: book3)
//lib.uploadBooks(book: book4)
//print(lib.sorted().map{ $0.discription })
//print(lib.books.map{$0.discription})
//lib.deleteBooks(book: book1)
//print(lib.books.map{$0.discription})
//print(lib.searchBook(by: "xz").map{$0.discription})


//1)    Описать класс Fish. Для него должны быть описаны свойства: тип, цвет, размер (тип и цвет должны определяться однозначно). Описать класс Aquarium. В аквариуме должны храниться рыбы. Аквариум должен владеть функционалом: добавления рыб (как одной, так и нескольких), подсчет количества рыб по признаку (должен быть доступен пересчет рыб по любому из свойств рыбы), доставания рыб из аквариума (доставание должно быть доступно по признакам: цвет, тип, все рыбы), сортировки рыб по размеру (сортировка должна быть доступна по убыванию и возрастанию). Классы должны быть корректно инкапсулированы.
//enum TypeFish {
//    case karp
//    case som
//    case kambala
//}
//enum ColorFish {
//    case gray
//    case black
//    case green
//}
//
//class Fish {
//    let type: TypeFish
//    let color: ColorFish
//    let size: Double
//
//    init(type: TypeFish, color: ColorFish, size: Double){
//        self.type = type
//        self.color = color
//        self.size = size
//    }
//}
//
//class Aquarium {
//    var fish = [Fish]()
//
//    func appendFish(fish: Fish) {
//        self.fish.append(fish)
//    }
//
//    func appendFish(fish: [Fish]) {
//        self.fish += fish
//    }
//
//    func fishCount(type: TypeFish) -> Int {
//        self.fish.filter{ $0.type == type }.count
//
//    }
////        var sum = 0
////        self.fish.forEach {
////            if $0.type == fish {
////                sum += 1
////            }
////        }
////        return sum
////    }
//
//    func fishCount(color: ColorFish) -> Int {
//        self.fish.filter{ $0.color == color }.count
//    }
//
//    func fishCount(size: Double) -> Int {
//        self.fish.filter{ $0.size == size }.count
//    }
//
//    func removeFish(fishType: TypeFish) {
//        let remFish = self.fish.filter{ $0.type == fishType }
//        remFish.forEach { removFish in
//            if let indexRem = self.fish.firstIndex(where: { fish in
//                return fish === removFish
//            }) {
//                self.fish.remove(at: indexRem)
//            }
//
//        }
//
//    }
//
//    func removeFish(fishColor: ColorFish) -> [Fish] {
//        let saveF = self.fish.filter{ $0.color == fishColor }
//        self.fish.removeAll(where: { $0.color == fishColor })
//        return saveF
//
//    }
//
//    func removeFish() -> [Fish] {
//        defer {
//            self.fish.removeAll()
//        }
//        return self.fish
//    }
//
//    func sortFish(fish: Double) {
//
//    }
//}
//let aqua = Aquarium()
//let fish1 = Fish(type: .kambala, color: .black, size: 5.32)
//let fish2 = Fish(type: .karp, color: .green, size: 2.42)
//let fish3 = Fish(type: .kambala, color: .gray, size: 3.32)
//let fish4 = Fish(type: .som, color: .green, size: 11.00)
//
//aqua.appendFish(fish: [fish1, fish2, fish3, fish4])
//
//aqua.removeFish(fishType: .kambala)
//print(aqua.fish.map{ $0.size })


//4)    Создать сущности Computer, MacBook, Microsoft. У компьютера должно быть свойство «уникальный целочисленный идентификатор». У MacBook должно быть свойство «appleId». У Microsoft должно быть свойство «WindowsKeyIsEnable». Требуется создать массив Computer, запихнуть туда несколько MacBook и Microsoft. А затем требуется посчитать и вывести на экран количество MacBook и Microsoft в массиве

//class Computer {
//    let pcId: Int
//
//    init(pcId: Int) {
//        self.pcId = pcId
//    }
//}
//
//class MacBook: Computer {
//    let appleId: Int
//
//    init(appleId: Int, pcId: Int) {
//        self.appleId = appleId
//        super.init(pcId: pcId)
//    }
//}
//
//class Microsoft: Computer {
//    let windowsKeyIsEnable: Bool
//
//    init(windowsKeyIsEnable: Bool, pcId: Int) {
//        self.windowsKeyIsEnable = windowsKeyIsEnable
//        super.init(pcId: pcId)
//    }
//}
//
//let mac1 = MacBook(appleId: 1111, pcId: 3344)
//let mac2 = MacBook(appleId: 2222, pcId: 3333)
//let pc1 = Microsoft(windowsKeyIsEnable: true, pcId: 4444)
//let pc2 = Microsoft(windowsKeyIsEnable: false, pcId: 5555)
//let mac3 = MacBook(appleId: 6666, pcId: 7777)
//var computers = [mac1, mac2, mac3, pc1, pc2]
//var macCount = 0
//var pcCount = 0
//
//computers.forEach { comp in
//    if comp as? MacBook != nil {
//        macCount += 1
//    }
//}
//computers.forEach { comp in
//    if comp as? Microsoft != nil {
//        pcCount += 1
//    }
//}
//print("макбуков - \(macCount), PC - \(pcCount)")
//


//3)    (Swift) Создать протокол IDice, который имеет опциональное целочисленное get свойство value и метод throw (ничего не принимает и не возвращает). Далее создать класс Dice (игральная кость). Расширить класс Dice, подписав под протокол IDice – реализовать требуемое свойство таким образом: throw должен генерировать случайное целое число от 1 до 6 и класть его в get поле value. Далее требуется создать класс Player, у которого обязательно должно быть 3 игральные кости типа IDice (в инициализаторе должны передаваться конкретные кости, классы которых подчиняются протоколу IDice), добавить для класса метод throw, который кидает все 3 кости класса. Далее создать протокол ICounter (подсчитыватель) с методами сommitThrow (принимает объект, подписанный под IDice и ничего не возвращает) и resetScore. Далее создать класс Counter, добавить для него целочисленное поле score (по дефолту 0, поле должно быть доступно для получения, но недоступно для изменения) и подписать его под протокол ICounter – реализовать методы таким образом: commitThrow должен прибавлять к полю score очки кости, которая подаётся на вход функции, resetScore должен обнулять счёт. Далее трубется в класс Player добавить опционального делегата типа ICounter и в момент броска кости (каждой из трёх) Player должен вызывать у делегата (если делегат есть) метод commitScore и передавать в этот метод каждую выкинутую кость. Продемонстрировать работу всех классов и функций

//protocol IDice {
//    var value: Int? { get }
//    func throww()
//}
//
//class Dice: IDice {
//    var value: Int?
//
//    func throww() {
//        self.value = Int.random(in: 1...6)
//    }
//}
//
//class Player {
//    var dice1: IDice
//    var dice2: IDice
//    var dice3: IDice
//    var counterThrow: ICounter
//    func throwDices() {
//        self.dice1.throww()
//        self.dice2.throww()
//        self.dice3.throww()
//        self.counterThrow.commitThrow(dice: self.dice1)
//        self.counterThrow.commitThrow(dice: self.dice2)
//        self.counterThrow.commitThrow(dice: self.dice3)
//    }
//
//    init(dice1: IDice, dice2: IDice, dice3: IDice, counterThrow: ICounter) {
//        self.dice1 = dice1
//        self.dice2 = dice2
//        self.dice3 = dice3
//        self.counterThrow = counterThrow
//    }
//}
//
//protocol ICounter {
//    func commitThrow(dice:IDice)
//    func resetScore()
//}
//
//class Counter: ICounter {
//    private(set) var score = 0
//    func commitThrow(dice: IDice) {
//        if let value = dice.value {
//            self.score += value
//        }
//    }
//
//    func resetScore() {
//        self.score = 0
//    }
//}
//
//let d1 = Dice()
//let d2 = Dice()
//let d3 = Dice()
//let count = Counter()
//let p1 = Player(dice1: d1, dice2: d2, dice3: d3, counterThrow: count)
//p1.throwDices()
//print(count.score)
//let a = "1"
//let b = "2b"
//let c = "3c"
//let d = "4"
//let e = "5"
//var sum = 0
//
//if let a = Int(a) {
//    sum += a
//}
//if let b = Int(b) {
//    sum += b

//}





