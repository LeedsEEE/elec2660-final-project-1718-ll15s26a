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
    self.niValue.delegate=self;     //delegating the entered values and variables from the .h
    self.GcValue.delegate=self;     //
    self.GvValue.delegate=self;     //
    self.SliderValue.delegate=self; //
    self.EgValue.delegate=self;     //
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(bool) textFieldShouldReturn:(UITextField *)textField{     //this is to be able to use the return button on the virtual keyboard https://stackoverflow.com/questions/3573955/how-to-hide-the-keyboard-when-i-press-return-key-in-a-uitextfield
    [textField resignFirstResponder];
    return YES;
}


-(IBAction)Calculate:(id)sender{        //this calculates the values of Gc, Gv and ni using variables to set the very samll numbers with powers (eg: 10^-31)
    [self.SliderValue endEditing:YES];
    [self.EgValue endEditing:YES];
    
    Eg=[self.EgValue.text doubleValue];
    Temp=[self.SliderValue.text doubleValue];
    
    double var1= pow(10,-31);   //variables being set using pow function
    double var2= pow(10, -23);  //
    double var3= pow(10, -67);  //
    double var4= pow(GcCal, 1.5);//
    double var5= pow(GvCal, 1.5);//
    
    
    GcCal= ((6.283185307*9.8388*var1*1.3806*var2*Temp)/4.39569*var3);   //Calculating Gc before setting it to the power of 3/2
    GvCal= ((6.283185307*5.1927*var1*1.3806*var2*Temp)/4.39569*var3);   //Calculating Gv before setting it to the power of 3/2
    
    Gc=2*var4;  //the final answer for Gv
    Gv=2*var5; //final answer for Gv
    
    np=Gc*Gv*(exp(-Eg/(1.3806*var2*Temp))); //calculating ni using the values obtained from the Gc and Gv calculations
    ni=sqrt(np);    //square rooting the answer
    
    self.GvValue.text = [NSString stringWithFormat:@"%.25f",Gv];    //outputing the answers to the user
    self.GcValue.text = [NSString stringWithFormat:@"%.25f",Gc];    //
    self.niValue.text = [NSString stringWithFormat:@"%.25f",ni];    //
    
}

- (IBAction)Switch:(UISwitch*)sender {  //I have used Lab 2 from Minerva to be able to add code to the switch which enables the user to display the working out or hide it
    if (sender.on) {
    self.image.hidden = false;
} else{
    self.image.hidden = true;}
}

- (IBAction)Slider:(UISlider*)sender {  //this enables the user to pull the slider to alter the value of the Temperture which is then used in the calculation.
    UISlider *slider = (UISlider *)sender;
    NSString *newValue;
    newValue=[NSString stringWithFormat:@"%.2f",slider.value];
    self.SliderValue.text=newValue;
}




@end

