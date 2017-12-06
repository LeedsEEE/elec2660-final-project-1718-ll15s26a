//
//  SecondViewController.h
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface  ELEC2240 : UIViewController <UITextFieldDelegate>
{
    double Temp;
    double Eg;
    double GcCal;
    double GvCal;
    double niCal;
    double ni;
    double Gc;
    double Gv;
    double var1;
    double var2;
    double var3;
    double np;
    
    
}
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *InstLabel;
@property (strong, nonatomic) IBOutlet UILabel *TempLabel;
@property (strong, nonatomic) IBOutlet UITextField *SliderValue;
@property (strong, nonatomic) IBOutlet UILabel *EgLabel;
@property (strong, nonatomic) IBOutlet UITextField *EgValue;
@property (strong, nonatomic) IBOutlet UILabel *GcLabel;
@property (strong, nonatomic) IBOutlet UITextField *GcValue;
@property (strong, nonatomic) IBOutlet UILabel *GvLabel;
@property (strong, nonatomic) IBOutlet UITextField *GvValue;
@property (strong, nonatomic) IBOutlet UILabel *niLabel;
@property (strong, nonatomic) IBOutlet UITextField *niValue;
@property (strong, nonatomic) IBOutlet UIImageView *image;


- (IBAction)Slider:(id)sender;

-(IBAction)Calculate:(id)sender;
- (IBAction)Switch:(UISwitch*)sender;




@end

