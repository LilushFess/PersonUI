//
//  ViewController.m
//  PersonUI
//
//  Created by Yevhen Herasymenko on 17/10/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)createCar:(id)sender;

@end

@implementation ViewController

- (IBAction)createCar:(id)sender {
    Car *newCar = [[Car alloc] initWithName:self.textField.text speed:100];
    [newCar addSpeed:20];
    self.myLabel.text = [NSString stringWithFormat:@"speed %li",newCar.speed];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Car *myCar = [[Car alloc] initWithName:@"Porshe" speed:100];
    
    [myCar addSpeed:20];
    
    [Car loveCar:myCar];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
