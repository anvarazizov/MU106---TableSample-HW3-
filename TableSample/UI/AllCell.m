//
//  AllCell.m
//  TableSample
//
//  Created by Anvar Azizov on 2013-10-31.
//  Copyright (c) 2013 Anvar Azizov. All rights reserved.
//

#import "AllCell.h"

@implementation AllCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
