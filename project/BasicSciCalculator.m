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
@synthesize num1, num2, total, operation, enteredNo, lblText;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNum1 : 0];
    [self setNum2: 0];
    [self setOperation: PLUS];
    [self setTotal: 0.0];
    [self setEnteredNo: @"0"];
    
}

-(void) printNo{
    
    [lblText setText: enteredNo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Press9:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"9"];
    [self printNo];
}

- (IBAction)Press8:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"8"];
    [self printNo];
    
}

- (IBAction)Press7:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"7"];
    [self printNo];
    
}
- (IBAction)Press6:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"6"];
    [self printNo];
    
}
- (IBAction)Press5:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"5"];
    [self printNo];
    
}
- (IBAction)Press4:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"4"];
    [self printNo];
    
}
- (IBAction)Press3:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"3"];
    [self printNo];
    
}
- (IBAction)Press2:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"2"];
    [self printNo];
    
}

- (IBAction)Press1:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"1"];
    [self printNo];
    
}
- (IBAction)Press0:(id)sender {
    enteredNo= [ enteredNo stringByAppendingString:@"0"];
    [self printNo];
}
- (IBAction)Calculate:(id)sender {
    num2 = [enteredNo integerValue];
    
    if (operation==PLUS)
        total= num1 + num2;
        else if (operation==MINUS)
            total= num1 - num2;
            else if (operation==MULTIPLY)
                total= num1 * num2;
                else total= (double)num1 / (double)num2;
                    
                    enteredNo=[NSString stringWithFormat:@"%.2f", total];
                    [self printNo];
    num1=0;
    num2=0;
    total= 0.0;
    
    
}

-(void)storeNum1
{
    num1 = [enteredNo integerValue];
    enteredNo= @"0";
    [self printNo];
}

- (IBAction)setMultiply:(id)sender {
    [self storeNum1];
    operation= MULTIPLY;
}

- (IBAction)setDivide:(id)sender {
    [self storeNum1];
    operation= DIVIDE;
    
}

- (IBAction)setPlus:(id)sender {
    [self storeNum1];
    operation=PLUS;
}

- (IBAction)setMinus:(id)sender {
    [self storeNum1];
    operation=MINUS;
    
}

- (IBAction)clearTotal:(id)sender {
    self.enteredNo= @"0";
    [self printNo];
    
}

- (IBAction)DEL:(id)sender {
    NSString *Number = [lblText text];
    int length = [Number length];
    NSString *temp =[Number substringToIndex:length-1];
    
    if ([temp length]==0){
        temp=@"0";
        [lblText setText:[NSString stringWithFormat:@"%@",temp]];
    }
    [lblText setText:temp];
    
}

- (IBAction)DecimalPoint:(id)sender {
    enteredNo=[enteredNo stringByAppendingString:@"."];
    [self printNo];
}
@end
