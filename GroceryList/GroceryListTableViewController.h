//
//  GroceryListTableViewController.h
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCategoryViewController.h"
#import "GroceryList.h"
#import "ListItemsTableViewController.h"

@interface GroceryListTableViewController : UITableViewController
{
    NSMutableArray *_groceryCatergories;
}



@end
