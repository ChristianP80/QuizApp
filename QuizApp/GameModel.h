//
//  GameModel.h
//  QuizApp
//
//  Created by Christian Persson on 2018-01-24.
//  Copyright © 2018 Christian Persson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject
@property (nonatomic) NSDictionary *chosenQuestion;
@property (nonatomic) NSDictionary *question1;
@property (nonatomic) NSDictionary *question2;
@property (nonatomic) NSDictionary *question3;
@property (nonatomic) NSDictionary *question4;
@property (nonatomic) NSDictionary *question5;
@property (nonatomic) NSDictionary *question6;
@property (nonatomic) NSDictionary *question7;
@property (nonatomic) NSDictionary *question8;
@property (nonatomic) NSDictionary *question9;
@property (nonatomic) NSDictionary *question10;
@property (nonatomic) NSMutableArray * questionArray;
-(NSDictionary*)getQuestion;
-(BOOL)isCorrectGuess:(NSString*)guess :(NSDictionary *)question;

@end
