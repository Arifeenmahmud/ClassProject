//
//  Item+CoreDataProperties.swift
//  Todoey
//
//  Created by Lab on 30/1/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var done: Bool
    @NSManaged public var title: String?
    @NSManaged public var newRelationship: Category?

}
