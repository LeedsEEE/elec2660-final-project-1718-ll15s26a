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
@synthesize ViTextfield, VoTextfield, KTextfield, fsTextfield, dITextfield, LTextfield;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.VoTextfield.delegate = self;
    self.LTextfield.delegate = self;
    self.ViTextfield.delegate = self;
    self.KTextfield.delegate = self;
    self.fsTextfield.delegate = self;
    self.dITextfield.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(bool)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)Calculate:(id)sender {
    
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
    
    self.LTextfield.text = [NSString stringWithFormat:@"%.5f",answer];
}

//


@end
