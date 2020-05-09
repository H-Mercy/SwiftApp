//
//  sqliteManager.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/12/5.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class sqliteManager: NSObject {
   
   
    private static let manager: sqliteManager = sqliteManager()
    //单例
    class func shareManager() -> sqliteManager{
        return manager
    }
    
    
    var db: FMDatabase?
    func openDB(DBName: String) {
        
        // 1.根据传入的数据库名称拼接数据库的路径
         let Path = Bundle.main.path(forResource: "cfg", ofType: "db")
        // 2.创建数据库对象
        db = FMDatabase(path: Path)
        // 3.打开数据库
        // open方法特点:
        /**
         如果指定路径对应的数据库文件已经存在, 就会直接打开，否则， 就会创建一个新的
         */
        if !db!.open() {
            
            print("打开数据库失败")
            return
        }
        print("打开数据库成功")
        
       
       // createTable()
    }
    
    // MARK: 3、创建表
    func createTable() {
        
        // 1.编写SQL语句
        let sql = "CREATE TABLE IF NOT EXISTS T_Person( \n" +
            "id INTEGER PRIMARY KEY AUTOINCREMENT, \n" +
            "name TEXT, \n" +
            "age INTEGER \n" +
        "); \n"
        
        // 2.执行SQL语句
        // 注意点: 在FMDB中除了查询意外, 都称之为更新
        if db!.executeUpdate(sql: sql, AnyObject.self as AnyObject){
            
            print("创建表成功")
        }else{
            print("创建表失败")
        }
    }
    //增加
    func insertData(name:String,age:String) {
        
        // 1、编写SQLite语句
        let sql = "INSERT INTO T_Person (name,age) VALUES ('\(name)',\(age));"
        // 2、执行SQLite语句
        if db!.executeUpdate(sql, withArgumentsIn: []) {
            print("插入成功");
        }else {print("插入失败");
    }
    }
        //删除
    func deltData(name:String){
        
        // 1、编写SQLite语句
        let sql = "DELETE FROM T_Person WHERE age = \(name);"
        // 2、执行SQLite语句
        if db!.executeUpdate(sql, withArgumentsIn: []) {
            print("删除成功");
        }else {print("删除失败");
    }
    }
    //查询
    func selectData(){
        
        let sql = "SELECT * FROM SysConfig WHERE id < ?"
        if let res = db?.executeQuery(sql, withArgumentsIn: [10]){
            // 遍历输出结果
            while res.next() {
                let id = res.int(forColumn: "id");
                let name = res.string(forColumn: "field_1");
                let field_2 = res.string(forColumn: "field_2");
                 let field_3 = res.string(forColumn: "field_3");
                 let field_4 = res.string(forColumn: "field_4");
                print(id,name ?? (Any).self,field_2 ?? (Any).self,field_3 ?? (Any).self,field_4 ?? (Any).self ?? (Any).self)
            }
        }else{
            print("查询失败")
        }
        
        db?.close()
    }
    
    
}
