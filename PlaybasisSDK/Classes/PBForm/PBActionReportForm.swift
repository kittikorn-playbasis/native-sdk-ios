//
//  PBActionReportForm.swift
//  Playbook
//
//  Created by Nuttapol Thitaweera on 8/16/2559 BE.
//  Copyright © 2559 smartsoftasia. All rights reserved.
//

import UIKit

public enum ActionType:String {
    case Sell = "sell"
    case Step = "step"
}

public enum ParameterType:String {
    case Amount = "amount"
    case Quantity = "quantity"
}

public class PBActionReportForm: PBForm {
    
    public var playerId:String!
    public var month:String! = ""
    public var year:String! = ""
    public var count:Int = 1
    public var action:ActionType = .Sell
    public var parameter:ParameterType = .Amount
 
    
    public init(playerId:String,count:Int,action:ActionType,parameter:ParameterType) {
        super.init()
        self.playerId = playerId
        self.count = count
        self.action = action
        self.parameter = parameter
    }
    
    public override func params() -> [String:String] {
        var params:[String:String] = [:]
        params["player_id"] = self.playerId
        params["month"] = self.month
        params["year"] = self.year
        params["count"] = String(self.count)
        params["action"] = self.action.rawValue
        params["parameter"] = self.parameter.rawValue
        return params
    }
}
