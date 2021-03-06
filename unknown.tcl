#############################################################################
# Generated by PAGE version 4.18
#  in conjunction with Tcl version 8.6
#  Apr 26, 2019 08:30:14 PM IST  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#############################################################################
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 1
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} 
    wm focusmodel $top passive
    wm geometry $top 1366x705
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 1
    wm maxsize $top 1370 749
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    entry $top.ent43 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -insertbackground black 
    vTcl:DefineAlias "$top.ent43" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but44 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -pady 0 -text Search 
    vTcl:DefineAlias "$top.but44" "Button1" vTcl:WidgetProc "Toplevel1" 1
    listbox $top.lis45 \
        -background white -disabledforeground {#a3a3a3} -font font10 \
        -foreground {#000000} -height 302 -width 454 
    .top42.lis45 configure -font font10
    .top42.lis45 insert end text
    vTcl:DefineAlias "$top.lis45" "Listbox1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but46 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -pady 0 -text PPT! 
    vTcl:DefineAlias "$top.but46" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -pady 0 -text Open.. 
    vTcl:DefineAlias "$top.but48" "Button3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab49 \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -foreground {#000000} -text {Realtime Powerpoint Generator} 
    vTcl:DefineAlias "$top.lab49" "Label1" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.ent43 \
        -in $top -x 470 -y 200 -width 364 -relwidth 0 -height 30 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but44 \
        -in $top -x 840 -y 200 -width 87 -relwidth 0 -height 34 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lis45 \
        -in $top -x 470 -y 240 -width 454 -relwidth 0 -height 302 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $top.but46 \
        -in $top -x 470 -y 550 -width 67 -relwidth 0 -height 44 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but48 \
        -in $top -x 860 -y 550 -width 67 -relwidth 0 -height 44 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 420 -y 120 -width 564 -relwidth 0 -height 61 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

