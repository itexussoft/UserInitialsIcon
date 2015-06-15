//
//  CKGViewController.m
//  UserInitialsIcon
//
//  Created by Courtney Guo on 06/15/2015.
//  Copyright (c) 2014 Courtney Guo. All rights reserved.
//

#import "CKGViewController.h"
#import "CKGCell.h"
#import "CKGPerson.h"
#import <UserInitialsIcon/CKGUserInitialsIcon.h>
#import <QuartzCore/QuartzCore.h>

@interface CKGViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *people;

@end

@implementation CKGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"People";
    CKGPerson *person1 = [CKGPerson initWithName:@"James Smith" ID:@"1"];
    CKGPerson *person2 = [CKGPerson initWithName:@"Mary Johnson" ID:@"2"];
    CKGPerson *person3 = [CKGPerson initWithName:@"Alex Brown" ID:@"3"];
    CKGPerson *person4 = [CKGPerson initWithName:@"Elizabeth Williams" ID:@"4"];
    self.people = [NSArray arrayWithObjects:person1, person2, person3, person4, nil];
    [self.tableView registerNib:[UINib nibWithNibName:@"CKGCell" bundle:nil] forCellReuseIdentifier:@"peopleCell"];
    self.tableView.contentInset = UIEdgeInsetsMake(5, 0, 0, 0);
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CKGCell *cell = [tableView dequeueReusableCellWithIdentifier:@"peopleCell"];
    CKGPerson *person = self.people[indexPath.row];
    cell.nameLabel.text = person.name;
    cell.avatarImageView.image = [CKGUserInitialsIcon imageNamed:person.name identifier:person.ID fontSize:14 imageSize:CGSizeMake(30, 30)];
    cell.avatarImageView.layer.cornerRadius = 15;
    cell.avatarImageView.layer.masksToBounds = YES;
    return cell;
    
}

@end
