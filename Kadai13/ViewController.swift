//
//  ViewController.swift
//  Kadai13
//
//  Created by Hiroatsu on 2021/11/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    private let fruitsArray: [CustomCell.List] = [
        .init(fruit: "りんご", isMarked: false),
        .init(fruit: "みかん", isMarked: true),
        .init(fruit: "バナナ", isMarked: false),
        .init(fruit: "パイナップル", isMarked: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruitsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable:next force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.configure(name: fruitsArray[indexPath.row], image: fruitsArray[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
