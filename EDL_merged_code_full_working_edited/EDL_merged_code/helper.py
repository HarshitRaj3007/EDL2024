def get_control(r_tuple, mode):
    controls = {
        "1": 0,
        "2": 0,
        "3": 0,
        "4": 0,
        "5": 0,
        "6": 0,
        "7": 0,
        "8": 0,
        "9A": 0,
        "9B": 0,
        "10A": 0,
        "10B": 0,
        "Vt1A": 0,
        "Vt1B": 0,
        "Vt2A": 0,
        "Vt2B": 0,
        "Vt3A": 0,
        "Vt3B": 0,
        "Hz1A": 0,
        "Hz1B": 0,
        "Hz2A": 0,
        "Hz2B": 0,
        "Hz3A": 0,
        "Hz3B": 0,
    }
    if mode == "Write":
        controls["1"] = 1
        controls["2"] = 0
        controls["3"] = 0
        controls["4"] = 0
        controls["5"] = 0
        controls["6"] = 0
        controls["7"] = 0
        controls["8"] = 0
    elif mode == "Read":  # Logic to be updated
        controls["1"] = 0
        controls["2"] = 1
        controls["3"] = 0
        controls["4"] = 0
        controls["5"] = 0
        controls["6"] = 0
        controls["7"] = 1
        controls["8"] = 1
    else:
        print("Invalid mode")

    if r_tuple[0] == 1:
        controls["Hz1A"] = 1
        controls["Hz1B"] = 0
        controls["Hz2A"] = 0
        controls["Hz2B"] = 1
        controls["Hz3A"] = 0
        controls["Hz3B"] = 1
    elif r_tuple[0] == 2:
        controls["Hz1A"] = 0
        controls["Hz1B"] = 1
        controls["Hz2A"] = 1
        controls["Hz2B"] = 0
        controls["Hz3A"] = 0
        controls["Hz3B"] = 1
    elif r_tuple[0] == 3:
        controls["Hz1A"] = 0
        controls["Hz1B"] = 1
        controls["Hz2A"] = 0
        controls["Hz2B"] = 1
        controls["Hz3A"] = 1
        controls["Hz3B"] = 0
    else:
        print("Invalid resistor tuple")

    if r_tuple[1] == 1:
        controls["Vt1A"] = 0
        controls["Vt1B"] = 1
        controls["Vt2A"] = 1
        controls["Vt2B"] = 0
        controls["Vt3A"] = 1
        controls["Vt3B"] = 0
    elif r_tuple[1] == 2:
        controls["Vt1A"] = 1
        controls["Vt1B"] = 0
        controls["Vt2A"] = 0
        controls["Vt2B"] = 1
        controls["Vt3A"] = 1
        controls["Vt3B"] = 0
    elif r_tuple[1] == 3:
        controls["Vt1A"] = 1
        controls["Vt1B"] = 0
        controls["Vt2A"] = 1
        controls["Vt2B"] = 0
        controls["Vt3A"] = 0
        controls["Vt3B"] = 1
    else:
        print("Invalid resistor tuple")
    return controls


def r_num_to_tuple(r_num):
    r_num = int(r_num)
    r_tuple = [0, 0]
    r_tuple[0] = (r_num - 1) // 3 + 1
    r_tuple[1] = (r_num - 1) % 3 + 1
    return r_tuple
