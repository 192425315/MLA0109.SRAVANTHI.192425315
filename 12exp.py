# ---------------------------------------------------------
# Missionaries and Cannibals Problem - BFS Implementation
# ---------------------------------------------------------

from collections import deque

# Check if a given state is safe
def is_safe(state):
    M_left, C_left, boat = state
    M_right = 3 - M_left
    C_right = 3 - C_left

    # Left side unsafe
    if M_left > 0 and C_left > M_left:
        return False
    # Right side unsafe
    if M_right > 0 and C_right > M_right:
        return False

    return True

# Generate next possible states
def next_states(state):
    M_left, C_left, boat = state
    moves = [(1,0), (2,0), (0,1), (0,2), (1,1)]  # possible passenger combinations

    states = []
    for m, c in moves:
        if boat == 1:  # boat on left side
            new_state = (M_left - m, C_left - c, 0)
        else:          # boat on right side
            new_state = (M_left + m, C_left + c, 1)

        # Check boundaries
        if 0 <= new_state[0] <= 3 and 0 <= new_state[1] <= 3:
            if is_safe(new_state):
                states.append(new_state)

    return states

# BFS to find the solution path
def solve():
    start = (3, 3, 1)   # (Missionaries_left, Cannibals_left, boat_position)
    goal = (0, 0, 0)

    queue = deque([(start, [start])])
    visited = set()

    while queue:
        state, path = queue.popleft()

        if state == goal:
            return path

        for next_state in next_states(state):
            if next_state not in visited:
                visited.add(next_state)
                queue.append((next_state, path + [next_state]))

    return None


# Run the solver
solution = solve()

# Print the result
print("\n--- Missionaries and Cannibals Solution ---\n")
if solution:
    for step_num, state in enumerate(solution):
        M_left, C_left, boat = state
        M_right = 3 - M_left
        C_right = 3 - C_left
        print(f"Step {step_num}:")
        print(f" Left side:  M={M_left}, C={C_left}")
        print(f" Right side: M={M_right}, C={C_right}")
        print(f" Boat on {'Left' if boat == 1 else 'Right'}\n")

else:
    print("No solution found.")
