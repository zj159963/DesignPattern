//
//  ViewController.m
//  StrategyPattern
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "ViewController.h"
#import "CHGoodsListTableViewCell.h"
#import "CHResult.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITextField *priceField;
@property (nonatomic, weak) IBOutlet UITextField *countField;
@property (nonatomic, weak) IBOutlet UIButton *confirmButton;
@property (nonatomic, weak) IBOutlet UIButton *resettingButton;
@property (nonatomic, weak) IBOutlet UITableView *detailTableView;
@property (nonatomic, weak) IBOutlet UILabel *totalLabel;
@property (nonatomic, strong) NSMutableArray <CHResult *> *results;

@end

@implementation ViewController

#pragma mark - View Controller Life Cycel
- (void)awakeFromNib {
  [super awakeFromNib];
  
  _results = NSMutableArray.new;
}

#pragma mark - Text Field Actions
- (IBAction)fieldChanged:(id)sender {
  [self updateConfirmButton];
}

#pragma mark - Button Actions
- (IBAction)confirmButtonTapped:(id)sender {
  CHResult *result = [CHResult resultWithPrice:@(self.priceField.text.doubleValue).description count:@(self.countField.text.doubleValue).description];
  [UIView animateWithDuration:0.25 animations:^{
    [self.detailTableView beginUpdates];
    [self.results addObject:result];
    [self.detailTableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.results.count - 1 inSection:0]] withRowAnimation:UITableViewRowAnimationLeft];
    [self.detailTableView endUpdates];
  } completion:^(BOOL finished) {
    CGFloat total = self.totalLabel.text.doubleValue + result.total.doubleValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f", total];
    [self refreshFields];
    [self.view.window endEditing:YES];
  }];
}

- (IBAction)resettingButtonTapped:(id)sender {
  [self refreshFields];
}

#pragma mark - Table View Data Source
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  CHGoodsListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(CHGoodsListTableViewCell.class) forIndexPath:indexPath];
  [cell configWithData:self.results[indexPath.row]];
  return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.results.count;
}

#pragma mark - Other Method
- (void)updateConfirmButton {
  self.confirmButton.enabled = self.priceField.text.doubleValue != 0.0 && self.countField.text.doubleValue != 0.0;
}

- (void)refreshFields {
  self.priceField.text = @"0.00";
  self.countField.text = @"0";
}

@end