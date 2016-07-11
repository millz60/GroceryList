//
//  GroceryListTableViewController.m
//  GroceryList
//
//  Created by Matt Milner on 6/30/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "GroceryListTableViewController.h"


@interface GroceryListTableViewController () <AddCategoryDelegate>

@end

@implementation GroceryListTableViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    _groceryCatergories = [[NSMutableArray alloc] init];
    
    [self.tableView reloadData];
    
//    NSUserDefaults *groceryCategoryList = [NSUserDefaults standardUserDefaults];
    
//    _groceryCatergories = [groceryCategoryList valueForKey:@"groceryCategories"];
//    
//    [groceryCategoryList synchronize];
    
                           
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _groceryCatergories.count;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"AddCategorySegue"]){
        AddCategoryViewController *addCategoryViewController = segue.destinationViewController;
        addCategoryViewController.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"ListViewSegue"]){
        
        ListItemsTableViewController *listItemsTableViewController = segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        GroceryList *selectedObject = _groceryCatergories[indexPath.row];
        
        listItemsTableViewController.selectedGroceryList = selectedObject;
        
    }
    
}


-(void) saveButtonWasPressed:(NSString *)category {
    
    [_groceryCatergories addObject:category];
    
    [self.tableView reloadData];
    
    
    
}







- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryListCell" forIndexPath:indexPath];
    
    
    GroceryList *groceryList = _groceryCatergories[indexPath.row];
    
    cell.textLabel.text = groceryList.title;
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
