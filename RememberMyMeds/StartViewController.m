//
//  StartViewController.m
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/14/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import "StartViewController.h"
#import "rememberViewController.h"
#import "Meds.h"
#import "Prescription.h"

@interface StartViewController ()

@property (nonatomic, strong) Meds *meds;


@end

@implementation StartViewController
@synthesize medications = _medications;

-(Meds*)meds{
    if (!_meds){
        _meds = [[Meds alloc] init];
    }
    return _meds;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)insertNewObject:(id)sender
{
     NSLog(@"ADD BUTTON BEING CALLED");
    Prescription *script1 = [[Prescription alloc] initWithName:@"Lipitor"];
    [self.meds addRXtoBox:script1];
    [self.tableView reloadData];
}


-(NSMutableArray *)medications{
    if (!_medications){
        _medications = [NSMutableArray arrayWithObjects:@"Cool", @"No", nil];
    }
    return _medications;
    
}

-(void)setMedications:(NSMutableArray *)medications{
    _medications = medications;
    [self.tableView reloadData];
    
}

-(NSString *)titleForRow:(NSUInteger)row{
    return [self.meds.medlist objectAtIndex:row];
}
-(NSString *)subtitleForRow:(NSUInteger)row{
    return @"Take 1 Tablet 5 Times / Day";
}


#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.meds.medlist count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MedCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [self titleForRow:indexPath.row];
    cell.detailTextLabel.text = [self subtitleForRow:indexPath.row];
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        if (indexPath) {
            if ([segue.identifier isEqualToString:@"Show Medication"]) {
                if ([segue.destinationViewController isKindOfClass:[rememberViewController class]]) {
                    rememberViewController *rVC = (rememberViewController *)segue.destinationViewController;
                    rVC.title = [self titleForRow:indexPath.row];
                    
                }
            
        }
    }

        
    }
}

@end
