//
//  AddListItemViewController.m
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "AddListItemViewController.h"

@interface AddListItemViewController ()

@end

@implementation AddListItemViewController

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
    
    // find a way to reference the NSUserDefaults category name and add the list item to it here
    
    
    NSString *itemName = _addItemTextField.text;
    [self.delegate addButtonWasPressed:itemName];
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
