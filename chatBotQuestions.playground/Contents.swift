func responseTo (question : String) -> String {
    let lowerCaseResponseTo = question.lowercased()
    
    if lowerCaseResponseTo == "what is your name?" {
        return "My name is Bob-Bot"
    } else if lowerCaseResponseTo.hasPrefix("where") {
        return "To the better place"
    } else if lowerCaseResponseTo.hasPrefix("Who") {
        return "Papagei"
    } else if lowerCaseResponseTo.hasPrefix("how to do") {
        return "Try harder!"
    } else if lowerCaseResponseTo == "Where are the cookies?" {
        return "In the cookie-box"
    } else if lowerCaseResponseTo.hasPrefix("can i have") {
        return "Shure, take one!"
    } else {
        return "oops, try another question"
    }
}
responseTo(question: "HoW TO do MY hOmEwOrK?")
responseTo(question: "Where havi I go on holidays?")
responseTo(question: "WHAT IS yOuR name?")
responseTo(question: "Can I have a cookie?")
responseTo(question: "CAN I HAVE A COOKIE?!?")
responseTo(question: "Should I go?")

