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

@interface ViewController () <UITableViewDataSource, UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UITextField *priceField;
@property (nonatomic, weak) IBOutlet UITextField *countField;
@property (nonatomic, weak) IBOutlet UIButton *confirmButton;
@property (nonatomic, weak) IBOutlet UIButton *resettingButton;
@property (nonatomic, weak) IBOutlet UITableView *detailTableView;
@property (nonatomic, weak) IBOutlet UILabel *totalLabel;
@property (nonatomic, weak) IBOutlet UILabel *calculationLabel;
@property (nonatomic, strong) NSMutableArray <CHResult *> *results;

@end

@implementation ViewController

#pragma mark - View Controller Life Cycel
- (void)awakeFromNib {
  [super awakeFromNib];
  
  self.results = NSMutableArray.new;
}

#pragma mark - Gesture Recgnizer Actions
- (IBAction)calculationLabelTapped:(id)sender {
  self.view.userInteractionEnabled = NO;
  UIPickerView *picker = [[UIPickerView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height)];
  [self.view addSubview:picker];
  picker.dataSource = self;
  picker.delegate = self;
  picker.backgroundColor = UIColor.whiteColor;
  [UIView animateWithDuration:0.25 animations:^{
    picker.frame = self.view.bounds;
  } completion:^(BOOL finished) {
    self.view.userInteractionEnabled = YES;
  }];
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

#pragma mark - Picker View Data Source
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  return 2;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
  return 1;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
  return [self titleForPickerViewAtRow:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
  self.calculationLabel.text = [self titleForPickerViewAtRow:row];
  self.view.userInteractionEnabled = NO;
  [UIView animateWithDuration:0.25 animations:^{
    pickerView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height);
  } completion:^(BOOL finished) {
    [pickerView removeFromSuperview];
    self.view.userInteractionEnabled = YES;
  }];
  CGFloat total = self.totalLabel.text.doubleValue * [self rebateForRow:row];
  self.totalLabel.text = [NSString stringWithFormat:@"%.2f", total];
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

- (NSString *)titleForPickerViewAtRow:(NSInteger)row {
  if (row == 0) {
    return @"原价";
  } else if (row == 1) {
    return @"打八折";
  }
  return nil;
}

- (CGFloat)rebateForRow:(NSInteger)row {
  if (row == 0) {
    return 1.0;
  } else if (row == 1) {
    return 0.8;
  }
  return 1.0;
}

@end