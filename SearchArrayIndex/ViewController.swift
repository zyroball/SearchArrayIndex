//
//  ViewController.swift
//  SearchArrayIndex
//
//  Created by yu_ookubo on 2016/12/17.
//  Copyright © 2016年 TomFactory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Target search objects.
    let targetArray: [[String: String]] = [["A": "Ground", "B": "Sea"],
                                           ["C": "Hello", "D": "World"],
                                           ["E": "One", "F": "Direction"],
                                           ["G": "McBusted", "H": "Vamps"]]

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Search argument variable.
        let argArrayA: [String:String] = ["A": "Ground", "B": "Sea"]
        let argArrayB: [String:String] = ["C": "Hello", "D": "World"]
        let argArrayC: [String:String] = ["E": "One", "F": "Direction"]
        let argArrayD: [String:String] = ["G": "Vamps", "H": "McBudted"]

        // Excute search index by function.
        print("resultA : \(self.searchArrayIndexWithSearchData(searchData: argArrayA))")
        print("resultB : \(self.searchArrayIndexWithSearchData(searchData: argArrayB))")
        print("resultC : \(self.searchArrayIndexWithSearchData(searchData: argArrayC))")
        print("resultD : \(self.searchArrayIndexWithSearchData(searchData: argArrayD))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // Search to Object with searchWord in Array.
    // return by search result index.
    func searchArrayIndexWithSearchData(searchData:[String:String]) -> Int {
        var count = 0
        for str: [String:String] in self.targetArray {
            if str == searchData {
                // Found Object
                return count
            } else {
                count+=1
            }
        }

        // Not found
        return -1
    }
}
