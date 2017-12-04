//
//  SecondViewController.m
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import "ELEC2240.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)EgValue:(id)sender {
   
}

- (IBAction)Slider:(id)sender {
    UISlider *slider = (UISlider *)sender;
    NSString *newValue;
    newValue=[NSString stringWithFormat:@"%.2f",slider.value];
    self.SliderLabel.text=newValue;
}



@end

