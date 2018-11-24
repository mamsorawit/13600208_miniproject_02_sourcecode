//
//  QuestionBank.swift
//  progessHUD_13600208
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Pajongpong Luangkumdang. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init () {
        list.append(Question(image: "bbq", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. ผัก", choiceB: "B. สเต๊ก", choiceC: "C. ผลไม้", choiceD: "D. บาร์บีคิว", answer: 4))
        
        list.append(Question(image: "breakfast", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. อาหารเย็น", choiceB: "B. อาหารกลางวัน", choiceC: "C. อาหารเช้า", choiceD: "D. อาหารค่ำ", answer: 3))
        
        list.append(Question(image: "chicken", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. ไก่", choiceB: "B. เป็ด", choiceC: "C. ห่าน", choiceD: "D. นก", answer: 1))
        
        list.append(Question(image: "fruit", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. มะเขือเทศ", choiceB: "B. ผลไม้", choiceC: "C. ชมพู่", choiceD: "D. แอปเปิ้ล", answer: 2))
        
        list.append(Question(image: "pork", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. เนื้อไก่", choiceB: "B. ก๋วยเตี๋ยว", choiceC: "C. หมู", choiceD: "D. ม้า", answer: 3))
        
        list.append(Question(image: "soda", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. น้ำผลไม้", choiceB: "B. น้ำอัดลม", choiceC: "C. น้ำผัก", choiceD: "D. น้ำแดง", answer: 2))
        
        list.append(Question(image: "somtam", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. สลัด", choiceB: "B. ก๋วยเตี๋ยว", choiceC: "C. ส้มตำ", choiceD: "D. ยำ", answer: 3))
        
        list.append(Question(image: "squid", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. หอย", choiceB: "B. ปลา", choiceC: "C. กุ้ง", choiceD: "D. ปลาหมึก", answer: 4))
        
        list.append(Question(image: "steak", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. สันใน", choiceB: "B. สเต๊ก", choiceC: "C. ซี่โครง", choiceD: "D. สันนอก", answer: 2))
        
        list.append(Question(image: "vega", questionText: "อาหารชนิดนี้คือ?", choiceA: "A. น้ำ", choiceB: "B. เนื้อสัตว์", choiceC: "C. ผลไม้", choiceD: "D. ผัก", answer: 4))
    }
}
