//
//  CKNUITableViewCellStyleValue1.m
//  RgWsPublicClient
//
//  Created by Christos on 2/1/15.
//  Copyright (c) 2015 Christos Koninis. All rights reserved.
//

#import "CKNUITableViewCellStyleValue1.h"

@implementation CKNUITableViewCellStyleValue1

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    // ignore the style argument, use our own to override
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        self.detailTextLabel.numberOfLines = 2;
        self.detailTextLabel.adjustsFontSizeToFitWidth = YES;
    }
    return self;
}

@end
