#SingleInstance Force

; Load library
#Include komorebic.lib.ahk
; Load configuration
#Include komorebi.generated.ahk

;;;;;;;;;;;;;;; Focus windows
#w::Focus("up")  
; Win + W
#a::Focus("left") 
; Win + A
#s::Focus("down") 
; Win + S
#d::Focus("right")
; Win + D
#+[::CycleFocus("previous")
; Win + LShift + [
#+]::CycleFocus("next")    
; Win + LShift + ]

;;;;;;;;;;;;;;;;;;; Move windows*
#+w::Move("up")            
; Win + LShift + W
#+a::Move("left")          
; Win + LShift + A
#+s::Move("down")          
; Win + LShift + S
#+d::Move("right")         
; Win + LShift + D
#+Enter::Promote()         
; Win + LShift + Enter

;;;;;;;;;;;;;;;;;;;;;;; Stack windows
#!w::Stack("up")           
; Win + Alt + W
#!a::Stack("left")         
; Win + Alt + A
#!s::Stack("down")         
; Win + Alt + S
#!d::Stack("right")        
; Win + Alt + W
#;::Unstack()              
; Win + Alt + ; 
#[::CycleStack("previous") 
; Win + Alt + [
#]::CycleStack("next")     
; Win + Alt + [
;;;;;;;;;;;;;;;;;;;; Resize
#=::ResizeAxis("horizontal", "increase")     
; Win + =
#-::ResizeAxis("horizontal", "decrease")     
; Win + -
#+=::ResizeAxis("vertical", "increase")      
; Win + Shift + =
#+-::ResizeAxis("vertical", "decrease")      
; Win + Shift + -

;;;;;;;;;;;;;;;;;;;;;; Manipulate windows
#q::Close()                                  
; Win + q
#+m::Minimize()                              
; Win + Shift + m
#t::ToggleFloat()                            
; Win + t
#+t::ToggleMonocle()                         
; Win + Shift + t

;;;;;;;;;;;;;;;;;;;; Window manager options
#+r::Retile()                                
; Win + Shift + r
#^p::TogglePause()                           
; Win + Ctl + p

;;;;;;;;;;;;;;;;;;;;;;; Layouts
!x::FlipLayout("horizontal")                 
; Win + Alt + x
!y::FlipLayout("vertical")                   
; Win + Alt + y

;;;;;;;;;;;;;;;;;;;;;;; Workspaces
; Win + (0)......(8)
#1::FocusWorkspace(0)                        
#2::FocusWorkspace(1)
#3::FocusWorkspace(2)
#4::FocusWorkspace(3)
#5::FocusWorkspace(4)
#6::FocusWorkspace(5)
#7::FocusWorkspace(6)
#8::FocusWorkspace(7)
#9::FocusWorkspace(8)

#^Left::CycleWorkspace("previous")          
; Win  + Ctrl + LeftArrow
#^Right::CycleWorkspace("next")             
; Win  + Ctrl + RightArrow
^!+a::CycleWorkspace("previous")            
; Ctrl + Alt  + Shift + a
^!+d::CycleWorkspace("next")                
; Ctrl + Alt  + Shift + d

;;;;;;;;;;;;;;;; Move windows across workspaces
; Win + Shift + (0)
#+1::MoveToWorkspace(0)                     
#+2::MoveToWorkspace(1)
#+3::MoveToWorkspace(2)
#+4::MoveToWorkspace(3)
#+5::MoveToWorkspace(4)
#+6::MoveToWorkspace(5)
#+7::MoveToWorkspace(6)
#+8::MoveToWorkspace(7)
#+9::MoveToWorkspace(8)

