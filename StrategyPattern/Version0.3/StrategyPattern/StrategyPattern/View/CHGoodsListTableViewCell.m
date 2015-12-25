//
//  CHGoodsListTableViewCell.m
//  StrategyPattern
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHGoodsListTableViewCell.h"
#import "CHResult.h"

@interface CHGoodsListTableViewCell ()

@property (nonatomic, weak) IBOutlet UILabel *priceLabel;
@property (nonatomic, weak) IBOutlet UILabel *countLabel;
@property (nonatomic, weak) IBOutlet UILabel *totalLabel;

@end

@implementation CHGoodsListTableViewCell

- (void)configWithData:(CHResult *)data {
  self.priceLabel.text = data.price;
  self.countLabel.text = data.count;
  self.totalLabel.text = data.total;
}

@end