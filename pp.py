import logging
import argparse

import parse, paste


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('i', metavar='input_file')
    parser.add_argument('-o', '--output_file')
    parser.add_argument('-a', '--asa', action='store_true')
    parser.add_argument('-v', '--verbose', action='store_true')
    parser.add_argument('-s', '--slice-spec', nargs='+')
    args = parser.parse_args()
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)
        logging.debug("args: %s", args)
    slices = parse.parse(args.i)
    paste.paste(slices, args.output_file, asa=args.asa, slice_spec=args.slice_spec)


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    main()