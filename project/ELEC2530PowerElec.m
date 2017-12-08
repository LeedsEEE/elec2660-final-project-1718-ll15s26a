//
//  ELEC2530PowerElec.m
//  project
//
//  Created by Samia Abuzant on 02/12/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import "ELEC2530PowerElec.h"
@interface ELEC2530PowerElec ()

@end

@implementation ELEC2530PowerElec
@synthesize ViTextfield, VoTextfield, KTextfield, fsTextfield, dITextfield, LTextfield; //synthesizing the variables used in this tab

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.VoTextfield.delegate = self;           //delegating the variables from the textfields (entered numbers in the textfields)
    self.LTextfield.delegate = self;            //
    self.ViTextfield.delegate = self;           //
    self.KTextfield.delegate = self;            //
    self.fsTextfield.delegate = self;           //
    self.dITextfield.delegate = self;           //
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(bool)textFieldShouldReturn:(UITextField *)textField {  //this is to be able to use the return button on the virtual keyboard https://stackoverflow.com/questions/3573955/how-to-hide-the-keyboard-when-i-press-return-key-in-a-uitextfield
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)Calculate:(id)sender {      //this is linked to the Calculate button
    
    [self.VoTextfield endEditing:YES];
    [self.ViTextfield endEditing:YES];
    //[self.LTextfield endEditing:YES];
    [self.KTextfield endEditing:YES];
    [self.fsTextfield endEditing:YES];
    [self.dITextfield endEditing:YES];
    
    Vi = [self.ViTextfield.text doubleValue];
    Vo = [self.VoTextfield.text doubleValue];
    fs = [self.fsTextfield.text doubleValue];
    K = [self.KTextfield.text doubleValue];
    di = [self.dITextfield.text doubleValue];
    
    
    answer = K*(Vi-Vo)/(fs*di);
    
    self.LTextfield.text = [NSString stringWithFormat:@"%.5f",answer];  //this outputs the answer to the user in the L textfield after the numbers entered in the textfields have been used for the calculation
}

//


@end
