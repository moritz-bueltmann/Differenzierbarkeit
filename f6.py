import numpy as np
from mpl_toolkits.mplot3d import Axes3D  
import matplotlib.pyplot as plt
from matplotlib.colors import LinearSegmentedColormap
import random
# Define function f6
def f6(x, y):
    abs2 = x**2 + y**2
    return abs2 * np.sin(1. / abs2)
# Set parameters
x_min = -2.5
x_max = 2.5
y_min = -2.5
y_max = 2.5
step_size = 1.0e-2
# Create color map
colors =[(1, .84, .66), (1, .5333, 0)]
color_map = LinearSegmentedColormap.from_list("my_cmap", colors, N = 100)
# Generate data
x = np.arange(x_min, x_max, step_size)
y = np.arange(y_min, y_max, step_size)
X, Y = np.meshgrid(x, y)
z = np.array(f6(np.ravel(X), np.ravel(Y)))
Z = z.reshape(X.shape)
# Plot
fig = plt.figure()
fig.subplots_adjust(left=0, right=1, bottom=0, top=1)
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(X, Y, Z, cmap=color_map, antialiased=True)
ax.set_xlabel(r'$x$')
ax.set_ylabel(r'$y$')
ax.set_zlabel(r'$f_6(x,y)$')
fig.savefig("f6.pdf")
