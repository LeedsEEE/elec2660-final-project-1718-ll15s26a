//
//  SecondViewController.h
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface  SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *InstLabel;
@property (strong, nonatomic) IBOutlet UILabel *TempLabel;
@property (strong, nonatomic) IBOutlet UILabel *SliderLabel;
@property (strong, nonatomic) IBOutlet UILabel *EgLabel;
@property (strong, nonatomic) IBOutlet UILabel *GcLabel;
@property (strong, nonatomic) IBOutlet UILabel *GcValue;
@property (strong, nonatomic) IBOutlet UILabel *GvLabel;
@property (strong, nonatomic) IBOutlet UILabel *GvValue;
@property (strong, nonatomic) IBOutlet UIView *niLabel;
@property (strong, nonatomic) IBOutlet UILabel *niValue;

- (IBAction)EgValue:(id)sender;
- (IBAction)Slider:(id)sender;


@end

