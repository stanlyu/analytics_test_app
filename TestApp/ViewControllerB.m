//
//  ViewControllerB.m
//  TestApp
//
//  Created by Станислав Любченко on 05/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

#import "ViewControllerB.h"
#import "TestApp-Swift.h"

@interface ViewControllerB ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property ModelB *modelB;

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.modelB = [[ModelB alloc] initWithProperty1:@"model B" property2:200.0 property3:10 property4:YES];
    self.label.text = self.modelB.property1;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    Event2 *event2 = [[Event2 alloc] initWithModelB:self.modelB source:SourceSource2];
    [AnalyticsManager.shared logWithEvent:event2 analyticsType:AnalyticsTypeSopr];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:ViewControllerC.class]) {
        ViewControllerC *vcC = (ViewControllerC *)segue.destinationViewController;
        vcC.modelC = [[ModelC alloc] initWithProperty1:@"Model C"
                                             property2:self.modelA
                                             property3:self.modelB];
    }
}

@end
