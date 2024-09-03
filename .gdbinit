# This is Mikey's GDBInit files for x86


set disassembly-flavor intel
set follow-fork-mode child
set follow-fork-mode parent

define 1col_lo
    set $pos=0
    while ($pos < $arg0)
        x /xg $rsp-$pos
        set $pos=$pos+8
    end
end

define 1col_hi
    set $pos=0
    while ($pos < $arg0)
        x /xg $rsp+$pos
        set $pos=$pos+8
    end
end

# put home dir here
source /home/ubuntu/.gdbinit-gef.py
