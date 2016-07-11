//
//  ListItemsTableViewController.h
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddListItemViewController.h"
#import "GroceryList.h"

@interface ListItemsTableViewController : UITableViewController
{
    NSMutableArray *groceryList;
}

@property (nonatomic,weak) GroceryList *selectedGroceryList;

@end
