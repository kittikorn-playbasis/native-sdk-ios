//
//  PBModel.swift
//  Playbook
//
//  Created by Nuttapol Thitaweera on 6/20/2559 BE.
//  Copyright © 2559 smartsoftasia. All rights reserved.
//

import UIKit
import ObjectMapper

public class PBModel: NSObject, Mappable{

    var uid:String?
    
    override init() {
        super.init()
    }
    
    required public init?(_ map: Map){
    }
    
    public func mapping(map: Map) {
        uid <- map["_id"]
    }

}
