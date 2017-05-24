//
//  MEDOPDropDownMenuCell.h
//  XYSSCatering
//
//  Created by Meteorshower on 2016/11/3.
//  Copyright © 2016年 XYSS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MEDOPDropDownMenuCellDelegate <NSObject>

@optional

// 修改排序图片
- (void)changeCellSortImageWithRow:(NSInteger)row;

@end

@interface MEDOPDropDownMenuCell : UITableViewCell

@property (weak, nonatomic) id<MEDOPDropDownMenuCellDelegate> sortDelegate;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelToContentViewLeadingConstraint;
@property (weak, nonatomic) IBOutlet UILabel *dropDownMenuCellTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *dropDownMenuCellTitleImageView;
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
