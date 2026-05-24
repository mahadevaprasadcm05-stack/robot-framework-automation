import csv

def csv_as_list(filepath):
    data = []
    with open(filepath, newline='', encoding="utf-8-sig") as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data
