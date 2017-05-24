//
//  MEDOPDropDownMenuCell.m
//  XYSSCatering
//
//  Created by Meteorshower on 2016/11/3.
//  Copyright © 2016年 XYSS. All rights reserved.
//

#import "MEDOPDropDownMenuCell.h"

@implementation MEDOPDropDownMenuCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString * ID = @"MEDOPDropDownMenuCell";
    MEDOPDropDownMenuCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:ID owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if ([self.sortDelegate respondsToSelector:@selector(changeCellSortImageWithRow:)]) {
        NSLog(@"1231231232312312312");
    }
}


@end
