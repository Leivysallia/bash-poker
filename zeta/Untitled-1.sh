#!/bin/bash

ifcalc() {

    var

    if [[ "$class1" == "$class2" ]]; then
        if [[ "$class2" == "$class3" ]]; then
            if [[ "$class3" == "$class4" ]]; then
                if [[ "$class4" == "$class5" ]]; then
                    flush=1
                fi
            fi
        fi
    fi

    if [[ num1 -eq num2 ]]; then
        pair1=1
    fi

    if [[ num2 -eq num3 ]]; then
        pair2=1
    fi

    if [[ num3 -eq num4 ]]; then
        pair3=1
    fi

    if [[ num4 -eq num5 ]]; then
        pair4=1
    fi

    if [[ num1 -eq num2 ]]; then
        if [[ num2 -eq num3 ]]; then
            if [[ num1 -eq num3 ]]; then
                three1=1
            fi
        fi
    fi

    if [[ num2 -eq num3 ]]; then
        if [[ num3 -eq num4 ]]; then
            if [[ num2 -eq num4 ]]; then
                three2=1
            fi
        fi
    fi

    if [[ num3 -eq num4 ]]; then
        if [[ num4 -eq num5 ]]; then
            if [[ num3 -eq num5 ]]; then
                three3=1
            fi
        fi
    fi

    straightcheck1="$num1"
    straightcheck2=$((num2 - 1))
    straightcheck3=$((num3 - 2))
    straightcheck4=$((num4 - 3))
    straightcheck5=$((num5 - 4))
    if [[ straightcheck1 -eq straightcheck2 ]]; then
        if [[ straightcheck2 -eq straightcheck3 ]]; then
            if [[ straightcheck3 -eq straightcheck4 ]]; then
                if [[ straightcheck4 -eq straightcheck5 ]]; then
                    straignt=1
                fi
            fi
        fi
    fi

    if [[ num1 -eq num2 ]]; then
        if [[ num2 -eq num3 ]]; then
            if [[ num3 -eq num4 ]]; then
                four1=1
            fi
        fi
    fi

    if [[ num2 -eq num3 ]]; then
        if [[ num3 -eq num4 ]]; then
            if [[ num4 -eq num5 ]]; then
                four2=1
            fi
        fi
    fi

    display[0]=":  "
    display[1]=":  "
    display[2]=":  "
    display[3]=":  "
    display[4]=":  "

}
