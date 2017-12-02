//
//  FirstViewController.m
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import "BasicSciCalculator.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize num1, num2, enteredNo, lblText, operation, total;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setNum1:0];
    [self setNum2:0];
    [self setTotal:0.00];
    [self setOperation:PLUS];
    [self setEnteredNo:@"0"];
    [self printNumber];
}

-(void)printNumber
{
    [lblText setText:enteredNo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) storeNum1
{
    num1= [enteredNo integerValue];
    enteredNo=@"0";
    [self printNumber];
}

- (IBAction)clearTotal:(id)sender {
    self.enteredNo= @"0";
}

- (IBAction)Press0:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"0"];
    [self printNumber];
    
}
- (IBAction)Press1:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"1"];
    [self printNumber];
    
}

- (IBAction)Press2:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"2"];
    [self printNumber];
    
}

- (IBAction)Press3:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"3"];
    [self printNumber];
    
}

- (IBAction)Press4:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"4"];
    [self printNumber];
    
}
- (IBAction)Press5:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"5"];
    [self printNumber];
    
}

- (IBAction)Press6:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"6"];
    [self printNumber];
    
}

- (IBAction)Press7:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"7"];
    [self printNumber];
    
}

- (IBAction)Press8:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"8"];
    [self printNumber];
    
}

- (IBAction)Press9:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"9"];
    [self printNumber];
    
}

- (IBAction)PressDecimalpoint:(id)sender {
    enteredNo= [enteredNo stringByAppendingString:@"."];
    [self printNumber];
    
}

- (IBAction)setPlus:(id)sender {
    [self storeNum1];
    operation = PLUS;
    
}

- (IBAction)setMinus:(id)sender {
    [self storeNum1];
    operation = MINUS;
}

- (IBAction)setMultiply:(id)sender {
    [self storeNum1];
    operation = MULTIPLY;

}

- (IBAction)setDivide:(id)sender {
    [self storeNum1];
    operation = DIVIDE;
}

- (IBAction)calculate:(id)sender {
   
     num2 = [enteredNo integerValue];
    if (operation == PLUS)
        total = num1 + num2;
    else if (operation == MINUS)
        total =num1 - num2;
    else if (operation == MULTIPLY)
        total =num1 * num2;
    else
        total = (double)num1 / (double)num2;
    
    enteredNo = [NSString stringWithFormat:@"%f",total];
    [self printNumber];
    
    num1 = 0;
    num2 = 0;
    total= 0.0;
    
}



@end
