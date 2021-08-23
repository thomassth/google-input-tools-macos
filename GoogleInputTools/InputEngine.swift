//
//  InputEngine.swift
//  GoogleInputTools
//
//  Created by lennylxx on 8/22/21.
//

class InputEngine {

    static let shared: InputEngine = {
        let instance = InputEngine()
        return instance
    }()

    private var _composeString: String = ""
    private var _candidates: [String] = []

    func appendComposeString(string: String) -> String {
        _composeString.append(string)
        return _composeString
    }

    func cleanComposeString() {
        _composeString = ""
    }

    func composeString() -> String {
        return _composeString
    }

    func setCandidates(candidates: [String]) {
        _candidates = candidates
    }

    func candidates() -> [String] {
        return _candidates
    }

    func firstCandidate() -> String {
        return _candidates[0]
    }

    func candidate(index: Int) -> String {
        return _candidates[index]
    }

    func clean() {
        _composeString = ""
        _candidates = []
    }
}
