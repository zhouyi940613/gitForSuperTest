//
//  MyCell.m
//  WorkInFirstDay
//
//  Created by apple on 16/4/12.
//  Copyright © 2016年 YLKJ. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // init the file with loading mycell.xib
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:self options:nil];
        
        // if the path not exsit, then return nil
        if (arrayOfViews.count < 1) {
            return  nil;
        }
        
        // if the view of file xib not belongs to the class of UICollectionViewCell, then return nil
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            
            return nil;
        }
        
        // load xib file
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}

@end
