require 'tk'

hello = TkRoot.new {
  title "Hello Worl1d"
}

TkLabel.new(hello){text "ok"
pack({'padx'=>10 , 'pady'=>20})}



TkButton.new(hello){text "ok"
pack({'padx'=>10 , 'pady'=>20})}





Tk.mainloop