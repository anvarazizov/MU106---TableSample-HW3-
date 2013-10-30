//
//  RoutesViewController.m
//  TableSample
//
//  Created by Anvar Azizov on 2013-10-28.
//  Copyright (c) 2013 Anvar Azizov. All rights reserved.
//

#import "RoutesViewController.h"
#import "MyCell.h"
#import "AllCell.h"

@interface RoutesViewController ()

@end

@implementation RoutesViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            return [self configureFavoritesCell:indexPath  forTable:tableView];
            break;
            
        default:
            return [self configureAllCell:indexPath forTable:tableView];
            break;
    }
    
}

- (float)randomFloatBetween:(float)smallNumber and:(float)bigNumber {
    float diff = bigNumber - smallNumber;
    return (((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * diff) + smallNumber;
}

-(MyCell *)configureFavoritesCell:(NSIndexPath *)indexPath forTable:(UITableView *)tableView {

    static NSString *CellIdentifier = @"FavCell";
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.nameLabelFav.text = [NSString stringWithFormat:@"Маршрут %d", indexPath.row + 1];
    cell.priceLabelFav.text = [NSString stringWithFormat:@"Ціна %f", [self randomFloatBetween:1 and:5]];
    cell.favImageActive.image = [UIImage imageNamed:@"fav_image"];
    
    return cell;
}

-(AllCell *)configureAllCell:(NSIndexPath *)indexPath forTable:(UITableView *)tableView {
    static NSString *CellIdentifier = @"AllCell";
    AllCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.nameLabelAll.text = [NSString stringWithFormat:@"Маршрут %d", indexPath.row + 11];
    cell.priceLabelAll.text = [NSString stringWithFormat:@"Ціна: %f", [self randomFloatBetween:1 and:5]];
    cell.favImageNonActive.image = [UIImage imageNamed:@"non_fav_image"];
    
    return cell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return [NSString stringWithFormat:@"Обрані маршрути"];
    }
    return [NSString stringWithFormat:@"Всі маршрути"];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 60.f;
    }
    return 60.f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%d %d",indexPath.section, indexPath.row);
}

@end
