//
//  MyCell.h
//  TableSample
//
//  Created by Anvar Azizov on 2013-10-28.
//  Copyright (c) 2013 Anvar Azizov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabelFav;
@property (weak, nonatomic) IBOutlet UILabel *priceLabelFav;
@property (weak, nonatomic) IBOutlet UIImageView *favImageActive;

@end
