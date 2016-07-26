# Identify-Tic-tac-toe
A (~~dumb~~) simple way to identify a winner

Made with MATLAB (2015), this program do what follows:

1. Load the image
2. Preprocess
 - Binarize (transform to 2D)
 - Remove vertical and horizontal lines
 - Fill the gaps (the zeros)
3. Segments
 - Divide the images in 3x3 matrix
 - **Obs 1:** yes, same size
 - **Obs 2:** yes, the image must be divisible by 3
4. Classify
 - For any cell in the 3x3 matrix, calculate the roundness of the object
5. Decision
 - Calculate if diagonal, vertical or horizontal lines made a winner
