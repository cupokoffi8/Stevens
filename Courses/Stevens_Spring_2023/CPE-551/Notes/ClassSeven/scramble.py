#EE 551
# scramble.py

def scramble(seq):
    return [seq[i:] + seq[:i] for i in range(len(seq))]

