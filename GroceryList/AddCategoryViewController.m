//
//  AddCategoryViewController.m
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "AddCategoryViewController.h"

@interface AddCategoryViewController ()

@end

@implementation AddCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)cancel:(id)sender{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)save:(id)sender{
    
    // Create NSUserDefaults NSMutable Array instances of the category list here, and send the name to the delegate
    
    
    
    NSString *categoryName = _categoryNameTextField.text;
    
    GroceryList *groceryList = [[GroceryList alloc] init];
    groceryList.title = categoryName;
    
    
    [self.delegate saveButtonWasPressed: groceryList];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
