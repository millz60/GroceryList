//
//  AddCategoryViewController.h
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryList.h"

@protocol AddCategoryDelegate <NSObject>

-(void) saveButtonWasPressed:(NSObject *)category;

@end

@interface AddCategoryViewController : UIViewController
{

}


@property (nonatomic,weak) IBOutlet UITextField *categoryNameTextField;

@property (nonatomic,weak) id<AddCategoryDelegate> delegate;

@end
