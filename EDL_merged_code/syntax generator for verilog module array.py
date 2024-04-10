for i in range(0,128):
    index = 127 - i
    if i < 127:
        print(f"measured_values[{index}]", end = ", ")
    else:
        print(f"measured_values[{index}]", end = "")