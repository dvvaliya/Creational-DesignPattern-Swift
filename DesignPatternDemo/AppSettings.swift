//
//  AppSettings.swift
//  DesignPatternDemo
//
//  Created by dharmendra valiya on 25/04/20.
//  Copyright © 2020 dharmendra valiya. All rights reserved.
//

import Foundation

final public class AppSettings {
    private var settings : [String:Any] = [:]
    
  //  private let serialQueue = DispatchQueue(label: "serialQueue")
    private let concurrentQueue = DispatchQueue(label: "concurrentQueue",attributes: DispatchQueue.Attributes.concurrent)
    
    private init() {}
    
    public static let shared = AppSettings()
    
    public func set(value:Any, forKey key: String) {
        concurrentQueue.async(flags: .barrier) {
            self.settings[key] = value
        }
        
    }
    
    public func object(forKey key: String) -> Any? {
        var result: Any?
        concurrentQueue.sync {
            result = settings[key]
        }
        return result
    }
    
    public func reset() {
        settings.removeAll()
    }
}

