//
//  ViewController.swift
//  SwiftStringTestDemo
//
//  Created by 刘宇轩 on 10/17/17.
//  Copyright © 2017 liuyuxuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    func iterateString(iterateStr: String?,times time:Int){
        if let str = iterateStr{
            for _time in 0 ..< time {
                // string interception 字符串插值
                print("It is \(_time + 1) of print")
                for character in str.characters{
                    print(character)
                }
            }
        }
        decorateLine()
    }
    
    func createStringByCharacterArray(characterArray:[Character],times time:Int){
        let characterStr = String(characterArray)
        let cateStr = String(repeating: characterStr,count: time)
        print(cateStr)
        decorateLine()
    }
    
    func concatenateString(firstString firstStr: String, secondString secondStr : String){
        
        print(firstStr + secondStr)
        print(firstStr.appending(secondStr) )
        var firstStrVal = firstStr
        firstStrVal.append(secondStr)
        print(firstStrVal)
        // appending 和 append 是两个完全不一样的函数
        // appending直接产值（和+ 一摸一样） append 是给val类型的String添加元素（和+=一摸一样）
        decorateLine()
    }
    
    func concatenateUnicode(){
        var word = "Cafeeef"
        word += "\u{301}"
        print(word + " contain \(word.characters.count) words")
        decorateLine()
    }
    
    func indexStr(){
        let greeting = "Ni Hao"
        print("Start Index " + String(greeting[greeting.startIndex]))
        print("Last Index " + String(greeting[greeting.index(before: greeting.endIndex)]))
        print("Middle Index " + String(greeting[greeting.index(greeting.startIndex, offsetBy: greeting.characters.count / 2)]))
        
        for i in greeting.characters.indices{
            print("\(greeting[i])",terminator:" ")
        }
        decorateLine()

    }
    
    func insertationStr(insertStr : String,originalString originalStr:inout String) -> String{

        originalStr.insert(contentsOf: ["a","b","c"], at: originalStr.startIndex)
        print(originalStr)
        
        decorateLine()
        return originalStr
    }
    
    func prefixSuffixTest(fix: String,originalString originalStr: String){
        
        print("Original " + (originalStr.hasPrefix(fix) ? "have" : "dont have") + " prefix" )
        print("Original " + (originalStr.hasSuffix(fix) ? "have" : "dont have") + " suffix" )
        decorateLine()
    }
    
    func decorateLine(){
        print("--------------------------------------")
    }
    
    func theHeavenSwordanAndDragonSaber(){
        let titles = [
            "第01章　天涯思君不可忘",
            "第02章　武当山顶松柏长",
            "第03章　宝刀百炼生玄光",
            "第04章　字作丧乱意彷徨",
            "第05章　皓臂似玉梅花妆",
            "第06章　浮槎北溟海茫茫",
            "第07章　谁送冰舸来仙乡",
            "第08章　穷发十载泛归航",
            "第09章　七侠聚会乐未央",
            "第10章  百岁寿宴摧肝肠",
            "第11章　有女长舌利如枪",
            "第12章　针其膏兮药其肓",
            "第13章　不悔仲子逾我墙",
            "第14章　当道时见中山狼",
            "第15章　奇谋秘计梦一场",
            "第16章　剥极而复参九阳",
            "第17章　青翼出没一笑扬",
            "第18章　倚天长剑飞寒铓",
            "第19章　祸起萧墙破金汤",
            "第20章　与子共穴相扶将",
            "第21章　排难解纷当六强",
            "第22章　群雄归心约三章",
            "第23章　灵芙醉客绿柳庄",
            "第24章　太极初传柔克刚",
            "第25章　举火燎天何煌煌",
            "第26章　俊貌玉面甘毁伤",
            "第27章　百尺高塔任回翔",
            "第28章　恩断义绝紫衫王",
            "第29章　四女同舟何所望",
            "第30章　东西永隔如参商",
            "第31章　刀剑齐失人云亡",
            "第32章　冤蒙不白愁欲狂",
            "第33章　箫长琴短衣流黄",
            "第34章　新妇素手裂红裳",
            "第35章　屠狮有会孰为殃",
            "第36章　夭矫三松郁青苍",
            "第37章　天下英雄莫能当",
            "第38章　君子可欺之以方",
            "第39章　秘笈兵书此中藏",
            "第40章　不识张郎是张郎"
        ]
        
        for i in 0 ..< titles.count{
    
            if let index = titles[i].characters.index(where : testSpace){
                print(titles[i].substring(from: titles[i].characters.index(after: index)))
            }
        }

   
    }
    
    func testSpace(str : Character)->Bool{
    
        let space : Character = "　"
        return str == space
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        iterateString(iterateStr: "Test", times: 2)
        createStringByCharacterArray(characterArray: ["a","v","2"], times: 2)
        concatenateString(firstString: "Liu", secondString: "Yuxuan")
        concatenateUnicode()
        indexStr()
        var origalStr = "000"
        insertationStr(insertStr: "string", originalString: &origalStr)
        prefixSuffixTest(fix: "six", originalString: "sixooosix")
        theHeavenSwordanAndDragonSaber()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

