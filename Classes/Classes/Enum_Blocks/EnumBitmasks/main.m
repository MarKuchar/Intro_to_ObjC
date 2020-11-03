//
//  main.m
//  EnumBitmasks
//
//  Created by Derrick Park on 6/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

// "Enums are really just glorified integer constants"
typedef NS_ENUM(int, VideoGameType) {
  VideoGameTypeRPG,
  VideoGameTypeStrategy,
  VideoGameTypeAction,
  VideoGameTypeFPS,
  VideoGameTypeSports,
};

typedef NS_OPTIONS(NSInteger, Position) {
  PositionCEO               = 1 << 0,
  PositionProgrammer        = 1 << 1,
  PositionDesigner          = 1 << 2,
  PositionHumanResource     = 1 << 3,
  PositionProjectManager    = 1 << 4,
  PositionScrumMaster       = 1 << 5,
  PositionTester            = 1 << 6,
};

// &, |, <<, >>, ^
static Position myPosition = PositionCEO | PositionDesigner | PositionProgrammer | PositionProjectManager | PositionHumanResource;

void isCEOOrPromgramer(Position pos) {
  if (pos & PositionCEO) {
    printf("CEO\n");
  }
  if (pos & PositionProgrammer) {
    printf("Programmer\n");
  }
  if (pos & PositionDesigner) {
    printf("Designer\n");
  }
  if (pos & PositionHumanResource) {
    printf("HumanResource\n");
  }
  if (pos & PositionProjectManager) {
    printf("ProjectManager\n");
  }
  if (pos & PositionScrumMaster) {
    printf("ScrumMaster\n");
  }
  if (pos & PositionTester) {
    printf("Tester\n");
  }
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    isCEOOrPromgramer(myPosition);
  
    VideoGameType type = VideoGameTypeSports;
    printf("sizeof(type) = %lu, value = %d\n", sizeof(type), type);
    
    switch (type) {
      case VideoGameTypeRPG:
        printf("RPG\n");
        break;
      case VideoGameTypeStrategy:
        printf("Strategy\n");
        break;
      case VideoGameTypeAction:
        printf("Action\n");
        break;
      case VideoGameTypeFPS:
        printf("FPS\n");
        break;
      case VideoGameTypeSports:
        puts("Sports");
        break;
    }
    
  }
  return 0;
}
