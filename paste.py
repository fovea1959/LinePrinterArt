import logging
import json


def paste(slices, ofn, line_length=None, asa=True, slice_spec=None):
    #print(slices)
    slice_lengths = [len(sl) for sl in slices]
    logging.info("length of slices = %s", slice_lengths)
    n_lines = max(slice_lengths)
    logging.info("longest slice is %d", n_lines)

    if line_length is None:
        max_line_length = 0
        for sl in slices:
            for line in sl:
                max_line_length_in_slice = max([len(layer) for layer in line])
                max_line_length = max(max_line_length, max_line_length_in_slice)
        logging.info("longest line is %d", max_line_length)
        line_length = max_line_length

    # rearrange if necessary
    if slice_spec is not None:
        #print(slices)
        o = slices
        n = []
        for s in slice_spec:
            slice_spec_pieces = s.lower().split(':')
            i_index = int(slice_spec_pieces[0]) - 1
            reverse = False
            down = None
            for slice_spec_piece in slice_spec_pieces[1:]:
                if slice_spec_piece == 'r':
                    reverse = True
                elif slice_spec_piece[:1] == 'd':
                    down = int(slice_spec_piece[1:])
                else:
                    logging.fatal("bad slice_spec: %s (%s)", s, slice_spec_piece)
                    raise Exception("Bad slice spec")

            logging.info("slice: %d reverse: %s down: %s", i_index, reverse, down)

            n_strip = []
            if not reverse:
                n_strip.extend(o[i_index])
            else:
                o_strip = list(o[i_index])
                o_strip.reverse()
                for o_line in o_strip:
                    n_line = []
                    n_strip.append(n_line)
                    for o_layer in o_line:
                        o_layer = (o_layer + (' ' * line_length))[:line_length]  # pad and trim
                        n_layer = o_layer[::-1]
                        n_line.append(n_layer)

            if down is not None:
                for i in range(down):
                    n_strip.insert(0, [''])

            n.append(n_strip)

        slices = n
        #print(slices)

    output_lines = []
    for line_number in range(n_lines):
        line_pieces_list = []
        for sl in slices:
            if line_number >= len(sl):
                line_pieces_list.append([])
            else:
                line_pieces_list.append(sl[line_number])

        n_layers = max([len(line_piece) for line_piece in line_pieces_list])

        output_line = []
        output_lines.append(output_line)

        for layer_number in range(n_layers):
            output_layer = ''
            for line_piece in line_pieces_list:
                if layer_number >= len(line_piece):
                    o = ''
                else:
                    o = line_piece[layer_number]
                o = (o + (' ' * line_length))[:line_length] # pad and trim
                output_layer = output_layer + o

            output_line.append(output_layer)

    # print(json.dumps(output_lines))

    with open(ofn, 'w') as fp:
        for line_index, output_line in enumerate(output_lines):
            if asa:
                for slice_index, output_slice in enumerate(output_line):
                    asa_char = '+'
                    if slice_index == 0:
                        if line_index == 0:
                            asa_char = '1'
                        else:
                            asa_char = ' '
                    fp.write(asa_char)
                    fp.write(output_slice)
                    fp.write('\n')
            else:
                for output_slice in output_line:
                    fp.write(output_slice)
                    fp.write('\r')
                fp.write('\n')


def do(ifn, ofn, line_length=None, asa=True, slice_spec=None):
    slices = []
    with open(ifn, 'r') as fp:
        slices = json.load(fp)
    paste(slices, ofn, line_length=line_length, asa=asa, slice_spec=slice_spec)
    # print(json.dumps(slices))


def main():
    #do('test.json', 'test.otxt', asa=False)
    #do('deana.json', 'deana.otxt', asa=False)
    #do('spock.json', 'spock.otxt', asa=False)
    do('moon.json', 'moon.otxt', asa=False)


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    main()
