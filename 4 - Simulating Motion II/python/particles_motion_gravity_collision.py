import sys
import pygame
from pygame.locals import *
import pygame.gfxdraw
import numpy as np
import random

HEIGHT = 700
WIDTH = 700
FRIC = -0.12
FPS = 30
G = 0.5 # fake gravity coeff

GREEN = (0, 255, 0)
BLUE = (0, 0, 128)

vec = pygame.math.Vector2  # 2 for two dimensional

class Particle(pygame.sprite.Sprite):
    
    def __init__(self, pos = vec(0,0) ):
        super().__init__() 
        self.pos = pos
        self.vel = vec(0,0)
        self.force = vec(0,0)
        self.r = 5 # radius
        self.mass = 1
        self.color = GREEN
        self.active = True
    
    def move(self):
        
        # update velocity
        acc = self.force / self.mass
        self.vel += acc
        
        # update position
        self.pos += self.vel + 0.5 * acc   

        # clamp to screen
        if self.pos.x > WIDTH:
            self.pos.x = WIDTH
        if self.pos.x < 0:
            self.pos.x = 0
        if self.pos.y > HEIGHT:
            self.pos.y = HEIGHT
        if self.pos.y < 0:
            self.pos.y = 0

        # reset forces accumulator
        self.force = vec(0,0)

    def isActive(self):
        return True

# add friction force
def applyFriction( p, damp ):
    p.force.x += p.vel.x * damp
    p.force.y += p.vel.y * damp


# add gravitational force towards ground
def applyEarthGravity( p ):
    p.force.y += p.mass * G

# add gravitational force between two particles
def applyCollision( p1, p2, stiff=1, damp=0 ):
    
    if p1 is p2:
        pass

    # compute distance
    dx = p2.pos.x - p1.pos.x
    dy = p2.pos.y - p1.pos.y
    d = np.sqrt( dx**2 + dy**2 )
    d = np.clip(d,0.0,WIDTH)

    if d < p1.r:
        penetration = p1.r - d
        # compute force vector applied at p1 directed towards p2
        F = vec(0,0)
        F.x = dx / d * stiff * penetration
        F.y = dy / d * stiff * penetration

        p1.force.x -= F.x
        p1.force.y -= F.y
        p2.force.x += F.x
        p2.force.y += F.y

# add gravitational force towards ground
def applyEarthGravity( p ):
    p.force.y += p.mass * G

# add gravitational force towards ground
def applyEarthGravity( p ):
    p.force.y += p.mass * G

# add gravitational force between two particles
def applyGravity( p1, p2 ):
    
    if p1 is p2:
        pass

    # compute distance
    dx = p2.pos.x - p1.pos.x
    dy = p2.pos.y - p1.pos.y
    d = np.sqrt( dx**2 + dy**2 )
    d = np.clip(d,1,WIDTH)
    gravity = G * p1.mass * p2.mass / d
    
    # compute force vector applied at p1 directed towards p2
    F = vec(0,0)
    F.x = dx / d * gravity
    F.y = dy / d * gravity

    p1.force.x += F.x
    p1.force.y += F.y
    p2.force.x -= F.x
    p2.force.y -= F.y

if __name__=='__main__':
    pygame.init()
    FramePerSec = pygame.time.Clock()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    particles = []
    
    for s in range(10):
        particles.append( Particle( pos=vec(random.randint(0,WIDTH),random.randint(0,HEIGHT)) ) )
    
    '''p1 = Particle( pos=vec(100,100) )
    p1.vel.x = 0
    p2 = Particle( pos=vec(400,100) )
    particles.append(p1)
    particles.append(p2)'''

    while True:
        
        screen.fill((0,0,0))

        # compute forces for all possible pairs of particles
        res = [(a, b) for idx, a in enumerate(particles) for b in particles[idx + 1:]]
        
        for couple in res:
            applyGravity(couple[0],couple[1])
            #applyCollision(couple[0],couple[1])

        for p in particles:
            #applyEarthGravity(p)
            p.move()
            pygame.gfxdraw.aacircle(screen, int(p.pos.x), int(p.pos.y), int(p.r), p.color)

        # manage user events
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
           
        pygame.display.update()
        FramePerSec.tick(FPS)

