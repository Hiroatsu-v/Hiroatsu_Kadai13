//
//  CustomCell.swift
//  Kadai13
//
//  Created by Hiroatsu on 2021/11/29.
//

import UIKit

// Labelの表示とimageViewの表示処理を行うクラス
class CustomCell: UITableViewCell {
    @IBOutlet private weak var fruitsLabel: UILabel!
    @IBOutlet private weak var checkMarkImageView: UIImageView!

    // フィードバック
    // ListItemを一つ渡せば足りる
    func configure(item: ListItem) {
        fruitsLabel.text = item.name
        // 三項演算子で記述
        // trueの記述は必要ない
        // マーク非表示の際に白い画像は不要でnilにすれば足りる
        checkMarkImageView.image = item.isMarked ? UIImage(named: "checkmark") : nil
    }
}
