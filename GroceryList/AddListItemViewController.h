//
//  AddListItemViewController.h
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddListItemDelegate <NSObject>

-(void) addButtonWasPressed:(NSString *) itemName;

@end

@interface AddListItemViewController : UIViewController


@property (nonatomic,weak) IBOutlet UITextField *addItemTextField;

@property (nonatomic,weak) id<AddListItemDelegate> delegate;



@end
