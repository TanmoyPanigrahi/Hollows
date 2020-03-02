# Summary
A published choose your adventure story app - the first of many apps that I will be publishing since finishing LondonAppBrewery's iOS Dev course in Sum '19. It is available at https://apps.apple.com/ua/app/hollows/id1476165643

# UI
The app consists of a start view, followed by a navigation view consisting of the prologue and the first chapter. I have used containers for partitioning off sections of the screen for a better overall feel, and the backgrounds set a dark theme. 

# Code
The code is Hollows/Model and consists of a tree class for the story. It consists of StoryTree class, which is a binary tree and contains nodes of the Node class which contain the generic node info like references to parent nodes, child nodes, and the information to be displayed at their junction of the story. All of the leaves - barring one which is the good ending - are a bad ending. 

# Note
It was the first *almost decent* iOS app that I made and doesn't reflect my current capabilities as a developer. 
