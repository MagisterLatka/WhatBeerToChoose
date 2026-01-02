import tkinter as tk
import clips as clp

environment = clp.Environment()
root = tk.Tk()

def labelHandler(label):
    def handler():
        global environment
        global root
        for fact in environment.facts():
            if fact.template.name == 'pytanie':
                pytanie = fact
        if 'pytanie' in locals():
            label.config(text=pytanie[0])
        else:
            for fact in environment.facts():
                if fact.template.name == 'wyswietl':
                    wyswietl = fact

            root.destroy()
            root = tk.Tk()
            root.title('what sould i drink - beer-edition')
            root.maxsize(1000, 50)
            root.minsize(200, 50)
            wynikText = 'Propozycje: '
            for item in wyswietl:
                wynikText += item + ',  '
            wynikText = wynikText[:-3] + '.'
            tk.Label(root, text=wynikText).pack()
            return
        label.after(100, handler)
    handler()

def buttonYesHandler():
    global environment
    environment.assert_string('(odpowiedz "Yes")')
    environment.run()

def buttonNoHandler():
    global environment
    environment.assert_string('(odpowiedz "No")')
    environment.run()

if __name__ == "__main__":
    environment.load('rules.clp')
    environment.reset()
    environment.assert_string('(pytanie start)')
    environment.run()
    for fact in environment.facts():
        if fact.template.name == 'pytanie':
            pytanie = fact

    root.title('what sould i drink - beer-edition')
    root.maxsize(300, 100)
    root.minsize(300, 100)
    
    label = tk.Label(root)
    label.pack()
    labelHandler(label)
    
    tk.Button(root, text='Yes', command=buttonYesHandler).pack()
    tk.Button(root, text='No', command=buttonNoHandler).pack()
    
    root.mainloop()