# Simple Motion Simulation of a Point-like Mass 
# with Euler's Forward scheme (FE)
# The 2D space is normalized 0..1

import sys
import pygame
from pygame.locals import *
import pygame.gfxdraw
import numpy as np
import random

HEIGHT = 600
WIDTH = 600
FPS = 30

r = 5 # radius
mass = 1
color = (0, 255, 0)
    
vec = pygame.math.Vector2  # 2 for two dimensional

if __name__=='__main__':
    
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))

    FramePerSec = pygame.time.Clock()
    T = 1.0 / FPS
    
    pos = vec( 0.5,0.5 )
    vel = vec(0,0.1)
    force = vec(0,0)
    
    while True:
        
        screen.fill((0,0,0))

        # update position
        pos += vel * T   

        # update velocity
        vel += force / mass * T
        
        # bounce
        if pos.x > 1 or pos.x < 0:
            vel.x = -vel.x
        if pos.y > 1 or pos.y < 0:
            vel.y = -vel.y

        pygame.gfxdraw.aacircle(screen, int(pos.x*WIDTH), int(pos.y*HEIGHT), int(r), color)

        # manage user events
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
           
        pygame.display.update()
        FramePerSec.tick(FPS)

