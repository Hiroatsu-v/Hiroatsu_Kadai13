//
//  ListItem.swift
//  Kadai13
//
//  Created by Hiroatsu on 2021/12/01.
//

import Foundation

// フィードバック
// ListItem は Cell だけでなく ViewController でも使う型なので、独立したファイルで定義をする
// List は項目が集まったものを意味するものなので、List から ListItemにリネーム

struct ListItem {
    let name: String
    var isMarked: Bool
}
