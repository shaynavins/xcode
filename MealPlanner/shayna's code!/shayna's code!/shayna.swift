//
//  shayna.swift
//  shayna's code!
//
//  Created by vinoth rajasekaran on 07/01/18.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit
class shayna {
    
    
    //MARK: Properties
    var name: String = ""
    var photo: UIImage?
    var rating: Int = 0
    
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0  {
            return nil
        }    }


}
