import logging
import json


def parse(ifn):
    slices = []
    current_slice = None
    current_line = None
    with open(ifn, 'r') as fp:
        for line in fp:
            line = line.rstrip('\n')
            if len(line) == 0:
                cc = ' '
                text = ''
            else:
                cc = line[:1]
                text = line[1:]
            if cc == '1':
                current_slice = []
                slices.append(current_slice)
                current_line = None
            elif cc == ' ':
                current_line = []
                if current_slice is None:
                    current_slice = []
                    slices.append(current_slice)
                current_slice.append(current_line)
            elif cc == '0':
                if current_slice is None:
                    current_slice = []
                    slices.append(current_slice)
                current_slice.append([''])    # blank line
                current_line = []
                current_slice.append(current_line)
            elif cc == '-':
                if current_slice is None:
                    current_slice = []
                    slices.append(current_slice)
                current_slice.append([''])  # blank line
                current_slice.append([''])  # blank line
                current_line = []
                current_slice.append(current_line)
            elif cc == '+':
                pass
            else:
                logging.error("bad carriage control '%s'", cc)
                continue
            if current_line is None:
                current_line = []
                current_slice.append(current_line)
            current_line.append(text)
    return slices


def do(ifn, ofn):
    slices = parse(ifn)
    with open(ofn, 'w') as fp:
        json.dump(slices, fp, indent=2)


def main():
    #do('../harbison/ppt/ppt-ascii (fish)/133/spock.txt', 'spock.json')
    do('../harbison/ppt/ppt-ascii (fish)/133/moon.txt', 'moon.json')


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    main()
