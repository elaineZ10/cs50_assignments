from cs50 import get_string

text = get_string("Text: ").strip()
num_letters, num_words, num_sentences = 0, 1, 0

for i in range(len(text)):
    if text[i].isalpha():
        num_letters += 1
    elif text[i].isspace():
        num_words += 1
    elif text[i] == '.' or text[i] == '!' or text[i] == '?':
        num_sentences += 1

L = num_letters / num_words * 100
S = num_sentences / num_words * 100
index = 0.0588 * L - 0.296 * S - 15.8
index = round(index)

if index < 1:
    print("Before Grade 1")
elif index > 1 and index < 16:
    print(f"Grade {index}")
else:
    print("Grade 16+")
