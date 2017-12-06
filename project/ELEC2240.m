//
//  SecondViewController.m
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import "ELEC2240.h"

@interface ELEC2240 ()

@end

@implementation ELEC2240
@synthesize niValue, GcValue, GvValue, SliderValue, EgValue;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.niValue.delegate=self;
    self.GcValue.delegate=self;
    self.GvValue.delegate=self;
    self.SliderValue.delegate=self;
    self.EgValue.delegate=self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(bool) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


-(IBAction)Calculate:(id)sender{
    [self.SliderValue endEditing:YES];
    [self.EgValue endEditing:YES];
    
    Eg=[self.EgValue.text doubleValue];
    Temp=[self.SliderValue.text doubleValue];
    
    double var1= pow(10,-31);
    double var2= pow(10, -23);
    double var3= pow(10, -67);
    double var4= pow(GcCal, 1.5);
    double var5= pow(GvCal, 1.5);
    
    
    GcCal= ((6.283185307*9.8388*var1*1.3806*var2*Temp)/4.39569*var3);
    GvCal= ((6.283185307*5.1927*var1*1.3806*var2*Temp)/4.39569*var3);
    
    Gv=2*var4;
    Gv=2*var5;
    
    np=Gc*Gv*(exp(-Eg/(1.3806*var2*Temp)));
    ni=sqrt(np);
    
    self.GvValue.text = [NSString stringWithFormat:@"%.25f",Gv];
    self.GcValue.text = [NSString stringWithFormat:@"%.25f",Gc];
    self.niValue.text = [NSString stringWithFormat:@"%.25f",ni];
    
}

- (IBAction)Switch:(UISwitch*)sender {
    if (sender.on) {
    self.image.hidden = false;
} else{
    self.image.hidden = true;}
}

- (IBAction)Slider:(id)sender {
    UISlider *slider = (UISlider *)sender;
    NSString *newValue;
    newValue=[NSString stringWithFormat:@"%.2f",slider.value];
    self.SliderValue.text=newValue;
}




@end

