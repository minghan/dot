#!/usr/bin/env python

import os, sys
import shutil

HOME = os.getenv("HOME")

os.system("git submodule update --init --recursive")

def backup():
    pass

def install():
    current_folder = os.path.abspath(os.path.dirname(__file__))
    print "Installing from %s" % current_folder
    print 
    c = 0

    for dirname, dirnames, filenames in os.walk(current_folder):
        for subdirname in dirnames:
            if subdirname.endswith(".symlink"):
                src = os.path.join(dirname, subdirname)
                dst = os.path.join(HOME, "." + subdirname[:-8])

                if os.path.islink(dst):
                    print "Link exists, removing %s" % dst
                    os.unlink(dst)
                elif os.path.exists(dst):
                    print "Folder exists, removing %s" % dst
                    shutil.rmtree(dst)
                    
                c = c + 1
                os.symlink(src, dst)
                print "[%d]\t%s -> %s" % (c, dst, src)

        for filename in filenames:
            if filename.endswith(".symlink"):
                src = os.path.join(dirname, filename)
                dst = os.path.join(HOME, "." + filename[:-8])
                if os.path.islink(dst):
                    print "Link exists, removing %s" % dst
                    os.unlink(dst)
                elif os.path.exists(dst):
                    print "File exists, removing %s" % dst
                    os.unlink(dst)
                    
                c = c + 1
                os.symlink(src, dst)
                print "[%d]\t%s -> %s" % (c, dst, src)
                

def uninstall():
    pass

def restore():
    pass

def clone():
    pass

COMMANDS = {
    "install": {
        "description": "Install dot files",
        "func": install,
    },
    "uninstall": {
        "description": "Uninstall dot files"
    },
    "clone": {
        "description": "Creates a real copy of the dot files"
    }
}

def usage():
    print "Usage: ./dot.py command [options]"
    sys.exit(1)

def main():
    if len(sys.argv) < 2:
        usage()

    if sys.argv[1] not in COMMANDS:
        print "ERROR: Command '%s' not found" % sys.argv[1]
        usage()

    COMMANDS.get(sys.argv[1])['func']()

if __name__ == '__main__':
    main()
