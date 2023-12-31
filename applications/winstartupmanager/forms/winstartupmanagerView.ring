# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.19 Form Designer
# Date : 18/09/2023
# Time : 06:24:31

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new winstartupmanagerView { win.show() } 
		exec()
	}
}

class winstartupmanagerView from WindowsViewParent
	win = new MainWindow() { 
		move(171,102)
		resize(800,486)
		setWindowTitle("Windows Startup Manager")
		setstylesheet("background-color:;") 

		setWindowFlags(Qt_Window | Qt_WindowMinimizeButtonHint | Qt_WindowCloseButtonHint) 
		TableWidget1 = new tablewidget(win) {
			move(7,7)
			resize(786,358)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setColumnCount(4)
			setHorizontalHeaderItem(1, new QTableWidgetItem("Program"))
			setHorizontalHeaderItem(2, new QTableWidgetItem("Path"))
			setHorizontalHeaderItem(3, new QTableWidgetItem("All Users"))
			setHorizontalHeaderItem(4, new QTableWidgetItem("Activation"))
			setColumnwidth(1,150)
			setColumnwidth(2,430)
			setColumnwidth(3,80)
			setColumnwidth(4, 80)
			setSelectionBehavior(QAbstractItemView_SelectRows)
			setAlternatingRowColors(True)
			setcellActivatedEvent("")
			setcellChangedEvent("")
			setcellClickedEvent("")
			setcellDoubleClickedEvent("")
			setcellEnteredEvent("")
			setcellPressedEvent("")
			setcurrentCellChangedEvent("")
			setcurrentItemChangedEvent("")
			setitemActivatedEvent("")
			setitemChangedEvent("")
			setitemClickedEvent("")
			setitemDoubleClickedEvent(Method(:DoubleClickAction))
			setitemEnteredEvent("")
			setitemPressedEvent("")
			setitemSelectionChangedEvent(Method(:RowClickAction))
			
		}
		AddB = new pushbutton(win) {
			move(457,409)
			resize(69,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Add")
			setClickEvent(Method(:AddProgAction))
			setBtnImage(AddB,"")
			
		}
		EditB = new pushbutton(win) {
			move(536,409)
			resize(69,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Edit")
			setClickEvent(Method(:EditProgAction))
			setBtnImage(EditB,"")
			
		}
		CloseB = new pushbutton(win) {
			move(694,409)
			resize(69,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Close")
			setClickEvent(Method(:CloseAction))
			setBtnImage(CloseB,"")
			
		}
		Label1 = new label(win) {
			move(12,371)
			resize(107,28)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Registry Path")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		RegPathLE = new lineedit(win) {
			move(84,372)
			resize(707,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		ExportB = new pushbutton(win) {
			move(14,411)
			resize(87,23)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Export backup")
			setClickEvent(Method(:ExportAction))
			setBtnImage(ExportB,"")
			
		}
		DeleteB = new pushbutton(win) {
			move(614,409)
			resize(69,27)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Delete")
			setClickEvent(Method(:DeleteAction))
			setBtnImage(DeleteB,"")
			
		}
		ImportB = new pushbutton(win) {
			move(14,437)
			resize(87,23)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Import backup")
			setClickEvent(Method(:ImportAction))
			setBtnImage(ImportB,"")
			
		}
		Label2 = new label(win) {
			move(135,416)
			resize(90,15)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Sort according to:")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		SortCmB = new combobox(win) {
			move(147,434)
			resize(138,20)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			AddItem("Program",0)
			AddItem("Path",0)
			AddItem("Users",0)
			setcurrentIndex(1)
			setactivatedEvent("")
			setcurrentIndexChangedEvent(Method(:SortLstAction))
			seteditTextChangedEvent("")
			sethighlightedEvent("")
			
		}
		ShortcutsBtn = new pushbutton(win) {
			move(470,442)
			resize(277,22)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Startup Shortcuts")
			setClickEvent(Method(:ShortcutsAction))
			setBtnImage(ShortcutsBtn,"")
			
		}
		AboutBtn = new pushbutton(win) {
			move(769,442)
			resize(22,22)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("?")
			setClickEvent(Method(:AboutAction))
			setBtnImage(AboutBtn,"")
			
		}
	}

# End of the Generated Source Code File...