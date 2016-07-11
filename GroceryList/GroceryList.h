//
//  GroceryList.h
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryList : NSObject
{
    NSMutableArray *listItems;
}

@property(nonatomic,copy) NSString *title;


@end
