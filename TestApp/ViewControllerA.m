//
//  ViewControllerA.m
//  TestApp
//
//  Created by Станислав Любченко on 20.10.17.
//  Copyright © 2017 Станислав Любченко. All rights reserved.
//

#import "ViewControllerA.h"
#import "TestApp-Swift.h"
#import "ViewControllerB.h"


@interface ViewControllerA ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property ModelA *modelA;

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modelA = [[ModelA alloc] initWithProperty1:@"model A" property2:100.0 property3:5];
    self.label.text = self.modelA.property1;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:ViewControllerB.class]) {
        ViewControllerB *vcB = (ViewControllerB *)segue.destinationViewController;
        vcB.modelA = self.modelA;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    Event1 *event1 = [[Event1 alloc] initWithModelA:self.modelA
                                             source:SourceSource1];
    [AnalyticsManager.shared logWithEvent:event1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
