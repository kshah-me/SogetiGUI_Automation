def convert_rgba_to_hex(a, b, c, d):
    print(a, b, c, d)
    return '#{:02x}{:02x}{:02x}'.format(*(a, b, c, d))
