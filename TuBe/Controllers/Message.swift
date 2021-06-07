//
//  Message.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/13.
//

import Foundation
import UIKit
import MessageKit

struct Member {
  let name: String
  let color: UIColor
}

struct Message {
  let member: Member
  let text: String
  let messageId: String
}

struct sender: SenderType{
    var senderId: String
    var displayName: String
}

