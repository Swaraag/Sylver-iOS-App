//
//  MenuVC.swift
//  SylverCompanion
//
//  Created by Swaraag Sistla on 5/16/20.
//  Copyright © 2020 Swaraag Sistla. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case rewards
    case movieNews
    case aboutUs
}

class MenuVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) {
            print("Dismissing \(menuType)")
        }
    }

}
