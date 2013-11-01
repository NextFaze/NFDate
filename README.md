# NFDate

Date/Time manipulation library for objective c

## Integration instructions

1. Add submodule to your project:

    `$ git submodule add git@github.com:NextfazeSD/NFDate.git ThirdParty/NFAllocInit`
    
2. Drag the NFAllocInit.xcodeproj project file from Finder to the ThirdParty folder in your project tree.
3. Add `NFDate` to target's Target Dependencies in Build Phases.
4. Add `libNFDate.a` in Link Binary with Libraries.
5. Add to header search paths `ThirdParty/` with recursive selected.
