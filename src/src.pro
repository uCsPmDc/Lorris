# -------------------------------------------------
# Project created by QtCreator 2011-05-30T19:16:22
# -------------------------------------------------
include(../config.pri)

QT += gui core network script
TARGET = Lorris
CONFIG += uitools precompile_header
CONFIG(debug, debug|release):DESTDIR = $$PWD/../bin/debug
else:DESTDIR = $$PWD/../bin/release
OBJECTS_DIR = $$PWD/../obj
MOC_DIR = $$PWD/../moc
UI_DIR = $$PWD/../ui
RCC_DIR = $$PWD/../qrc
CONFIG += qwt

LIBS += -L"$$PWD/../dep/qwt/lib"
LIBS += -L"$$PWD/../dep/qextserialport/lib"
TRANSLATIONS = ../translations/Lorris.cs_CZ.ts
TEMPLATE = app

INCLUDEPATH += ..
INCLUDEPATH += ../dep/qwt/src
INCLUDEPATH += ../dep/qserialdevice/src
INCLUDEPATH += ../dep/qhexedit2/src
INCLUDEPATH += ../dep
INCLUDEPATH += ../dep/qextserialport/src

SOURCES += ui/mainwindow.cpp \
    main.cpp \
    ui/HomeTab.cpp \
    WorkTab/WorkTab.cpp \
    WorkTab/WorkTabMgr.cpp \
    WorkTab/WorkTabInfo.cpp \
    LorrisTerminal/lorristerminal.cpp \
    LorrisTerminal/lorristerminalinfo.cpp \
    connection/connection.cpp \
    connection/serialport.cpp \
    LorrisTerminal/eeprom.cpp \
    LorrisAnalyzer/lorrisanalyzerinfo.cpp \
    LorrisAnalyzer/lorrisanalyzer.cpp \
    LorrisAnalyzer/sourcedialog.cpp \
    LorrisAnalyzer/labellayout.cpp \
    LorrisAnalyzer/packet.cpp \
    LorrisAnalyzer/devicetabwidget.cpp \
    LorrisAnalyzer/cmdtabwidget.cpp \
    LorrisAnalyzer/DataWidgets/datawidget.cpp \
    LorrisAnalyzer/DataWidgets/numberwidget.cpp \
    LorrisAnalyzer/DataWidgets/barwidget.cpp \
    LorrisAnalyzer/sourceselectdialog.cpp \
    LorrisShupito/lorrisshupito.cpp \
    LorrisShupito/lorrisshupitoinfo.cpp \
    LorrisShupito/shupito.cpp \
    LorrisShupito/shupitodesc.cpp \
    LorrisAnalyzer/DataWidgets/colorwidget.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphwidget.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graph.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphdialogs.cpp \
    connection/shupitotunnel.cpp \
    ../dep/qhexedit2/src/xbytearray.cpp \
    ../dep/qhexedit2/src/qhexedit_p.cpp \
    ../dep/qhexedit2/src/qhexedit.cpp \
    ../dep/qhexedit2/src/commands.cpp \
    LorrisShupito/fusewidget.cpp \
    shared/hexfile.cpp \
    shared/chipdefs.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphdata.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphcurve.cpp \
    LorrisShupito/flashbuttonmenu.cpp \
    LorrisShupito/modes/shupitospi.cpp \
    LorrisShupito/modes/shupitopdi.cpp \
    LorrisShupito/modes/shupitomode.cpp \
    LorrisShupito/modes/shupitocc25xx.cpp \
    LorrisShupito/shupitopacket.cpp \
    connection/tcpsocket.cpp \
    LorrisProxy/lorrisproxyinfo.cpp \
    LorrisProxy/lorrisproxy.cpp \
    LorrisProxy/tcpserver.cpp \
    LorrisShupito/progressdialog.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scriptwidget.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scripteditor.cpp \
    ../dep/qscriptsyntaxhighlighter.cpp \
    LorrisAnalyzer/playback.cpp \
    LorrisAnalyzer/DataWidgets/inputwidget.cpp \
    joystick/joymgr.cpp \
    joystick/joystick.cpp \
    LorrisAnalyzer/DataWidgets/terminalwidget.cpp \
    joystick/joythread.cpp \
    LorrisAnalyzer/DataWidgets/buttonwidget.cpp \
    ui/tabview.cpp \
    ui/tabwidget.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scriptstorage.cpp \
    ui/chooseconnectiondlg.cpp \
    ui/connectbutton.cpp \
    connection/connectionmgr2.cpp \
    LorrisAnalyzer/packetparser.cpp \
    ui/plustabbar.cpp \
    ui/homedialog.cpp \
    LorrisAnalyzer/widgetarea.cpp \
    LorrisAnalyzer/storage.cpp \
    LorrisShupito/overvccdialog.cpp \
    shared/fuse_desc.cpp \
    shared/defmgr.cpp \
    ../dep/ecwin7/ecwin7.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/scriptagent.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/qtscriptengine.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/scriptengine.cpp \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonhighlighter.cpp \
    LorrisAnalyzer/DataWidgets/circlewidget.cpp \
    ui/rangeselectdialog.cpp \
    ui/progressbar.cpp \
    ui/tooltipwarn.cpp \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphexport.cpp \
    LorrisTerminal/avr232boot.cpp \
    connection/shupitoconn.cpp \
    misc/utils.cpp \
    misc/config.cpp \
    ui/rotatebutton.cpp \
    ui/terminalsettings.cpp \
    ui/terminal.cpp \
    misc/sessionmgr.cpp \
    misc/datafileparser.cpp \
    LorrisAnalyzer/DataWidgets/sliderwidget.cpp \
    ui/settingsdialog.cpp \
    ui/shortcutinputbox.cpp \
    LorrisAnalyzer/DataWidgets/canvaswidget.cpp \
    LorrisAnalyzer/widgetfactory.cpp \
    ui/resizeline.cpp \
    WorkTab/childtab.cpp \
    WorkTab/tab.cpp \
    connection/proxytunnel.cpp

HEADERS += ui/mainwindow.h \
    revision.h \
    ui/HomeTab.h \
    WorkTab/WorkTab.h \
    WorkTab/WorkTabMgr.h \
    WorkTab/WorkTabInfo.h \
    LorrisTerminal/lorristerminal.h \
    LorrisTerminal/lorristerminalinfo.h \
    connection/connection.h \
    connection/serialport.h \
    LorrisTerminal/eeprom.h \
    LorrisAnalyzer/lorrisanalyzer.h \
    LorrisAnalyzer/lorrisanalyzerinfo.h \
    common.h \
    LorrisAnalyzer/sourcedialog.h \
    LorrisAnalyzer/labellayout.h \
    LorrisAnalyzer/packet.h \
    LorrisAnalyzer/devicetabwidget.h \
    LorrisAnalyzer/cmdtabwidget.h \
    LorrisAnalyzer/DataWidgets/datawidget.h \
    LorrisAnalyzer/DataWidgets/numberwidget.h \
    LorrisAnalyzer/DataWidgets/barwidget.h \
    LorrisAnalyzer/sourceselectdialog.h \
    LorrisShupito/lorrisshupito.h \
    LorrisShupito/lorrisshupitoinfo.h \
    LorrisShupito/shupito.h \
    LorrisShupito/shupitodesc.h \
    LorrisAnalyzer/DataWidgets/colorwidget.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphwidget.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graph.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphdialogs.h \
    connection/shupitotunnel.h \
    ../dep/qhexedit2/src/xbytearray.h \
    ../dep/qhexedit2/src/qhexedit_p.h \
    ../dep/qhexedit2/src/qhexedit.h \
    ../dep/qhexedit2/src/commands.h \
    LorrisShupito/fusewidget.h \
    shared/hexfile.h \
    shared/chipdefs.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphdata.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphcurve.h \
    LorrisShupito/flashbuttonmenu.h \
    LorrisShupito/modes/shupitospi.h \
    LorrisShupito/modes/shupitopdi.h \
    LorrisShupito/modes/shupitomode.h \
    LorrisShupito/modes/shupitocc25xx.h \
    LorrisShupito/shupitopacket.h \
    connection/tcpsocket.h \
    LorrisProxy/lorrisproxyinfo.h \
    LorrisProxy/lorrisproxy.h \
    LorrisProxy/tcpserver.h \
    LorrisShupito/progressdialog.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scriptwidget.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scripteditor.h \
    ../dep/qscriptsyntaxhighlighter_p.h \
    LorrisAnalyzer/playback.h \
    LorrisAnalyzer/DataWidgets/inputwidget.h \
    joystick/joymgr.h \
    joystick/joystick.h \
    LorrisAnalyzer/DataWidgets/terminalwidget.h \
    joystick/joythread.h \
    LorrisAnalyzer/DataWidgets/buttonwidget.h \
    ui/tabview.h \
    ui/tabwidget.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scriptstorage.h \
    ui/chooseconnectiondlg.h \
    ui/connectbutton.h \
    connection/connectionmgr2.h \
    LorrisAnalyzer/packetparser.h \
    ui/plustabbar.h \
    ui/homedialog.h \
    LorrisAnalyzer/widgetarea.h \
    LorrisAnalyzer/storage.h \
    LorrisShupito/overvccdialog.h \
    pch.h \
    shared/fuse_desc.h \
    shared/defmgr.h \
    ../dep/ecwin7/ecwin7.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/scriptagent.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/qtscriptengine.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/scriptengine.h \
    LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonhighlighter.h \
    LorrisAnalyzer/DataWidgets/circlewidget.h \
    ui/rangeselectdialog.h \
    ui/progressbar.h \
    ui/tooltipwarn.h \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphexport.h \
    LorrisTerminal/avr232boot.h \
    connection/shupitoconn.h \
    misc/utils.h \
    misc/singleton.h \
    misc/config.h \
    ui/rotatebutton.h \
    ui/terminalsettings.h \
    ui/terminal.h \
    misc/sessionmgr.h \
    misc/datafileparser.h \
    LorrisAnalyzer/DataWidgets/sliderwidget.h \
    ui/settingsdialog.h \
    ui/shortcutinputbox.h \
    LorrisAnalyzer/DataWidgets/canvaswidget.h \
    LorrisAnalyzer/widgetfactory.h \
    ui/resizeline.h \
    WorkTab/childtab.h \
    WorkTab/tab.h \
    connection/proxytunnel.h

FORMS += \
    LorrisAnalyzer/sourcedialog.ui \
    LorrisAnalyzer/lorrisanalyzer.ui \
    LorrisAnalyzer/sourceselectdialog.ui \
    LorrisShupito/lorrisshupito.ui \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphcurveadddialog.ui \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphcurveeditwidget.ui \
    LorrisTerminal/lorristerminal.ui \
    ui/hometab.ui \
    LorrisProxy/lorrisproxy.ui \
    LorrisAnalyzer/DataWidgets/ScriptWidget/scripteditor.ui \
    LorrisAnalyzer/playback.ui \
    ui/chooseconnectiondlg.ui \
    LorrisShupito/overvccdialog.ui \
    ui/rangeselectdialog.ui \
    updatecheck.ui \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphexport.ui \
    ui/terminalsettings.ui \
    misc/sessiondialog.ui \
    ui/settingsdialog.ui \
    LorrisAnalyzer/DataWidgets/sliderwidget_horizontal.ui \
    LorrisAnalyzer/DataWidgets/sliderwidget_vertical.ui \
    ui/tabswitchwidget.ui \
    LorrisAnalyzer/DataWidgets/GraphWidget/graphmarkerdialog.ui

RESOURCES += \
    LorrisAnalyzer/DataWidgetIcons.qrc \
    LorrisShupito/shupitoicons.qrc \
    icons.qrc \
    actions.qrc \
    shared/definitions.qrc \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/examples.qrc

RC_FILE = winicon.rc

OTHER_FILES += \
    ../dep/qextserialport/qextserialport.pri \
    shared/fusedesc.txt \
    shared/chipdefs.txt \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/snake.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/snake.js \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/default.js \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/default.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/slider.js \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/slider.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/canvas.js \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/canvas.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/graph.js \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/graph.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/joystick.py \
    LorrisAnalyzer/DataWidgets/ScriptWidget/examples/joystick.js

PRECOMPILED_HEADER  = pch.h
precompile_header:!isEmpty(PRECOMPILED_HEADER) {
    DEFINES += USING_PCH
}

win32 {
    CONFIG -= flat
    CONFIG += libusby

    INCLUDEPATH += ../dep/SDL/include

    CONFIG(debug, debug|release):LIBS += -lqwtd
    else:LIBS += -lqwt

    win32-msvc* {
        LIBS += -L"$$PWD/../dep/SDL/lib/msvc"
        QMAKE_CXXFLAGS += /wd4138
        QMAKE_CXXFLAGS_DEBUG += /Od
    } else {
        LIBS += -L"$$PWD/../dep/SDL/lib"
    }

    DEFINES += QT_DLL QWT_DLL QESP_NO_QT4_PRIVATE

    HEADERS += \
        ../dep/qextserialport/src/qextwineventnotifier_p.h \
        ../dep/qextserialport/src/qextserialport_p.h \
        ../dep/qextserialport/src/qextserialport_global.h \
        ../dep/qextserialport/src/qextserialport.h \
        ../dep/qextserialport/src/qextserialenumerator_p.h \
        ../dep/qextserialport/src/qextserialenumerator.h \
        misc/updater.h
    SOURCES += \
        ../dep/qextserialport/src/qextserialenumerator_win.cpp \
        ../dep/qextserialport/src/qextwineventnotifier_p.cpp \
        ../dep/qextserialport/src/qextserialport_win.cpp \
        ../dep/qextserialport/src/qextserialport.cpp \
        ../dep/qextserialport/src/qextserialenumerator.cpp \
        misc/updater.cpp

    LIBS += -lsdl -lsetupapi -lwinmm -lole32
}
unix:!macx:!symbian {
    CONFIG += libusby
    LIBS += -ludev -lSDL -lqextserialport_lorris

    system_qwt {
        LIBS += -lqwt
    } else {
        LIBS += -lqwt_lorris
    }

    QMAKE_POST_LINK = mkdir \
        "$$DESTDIR/translations" 2> /dev/null \
        ; \
        cp \
        ../translations/*.qm \
        "$$DESTDIR/translations/ 2> /dev/null"

    translations.path = /usr/share/lorris/
    translations.files = ../translations/Lorris.*.qm
    target.path = /usr/bin/
    INSTALLS += target translations
}
macx {
    INCLUDEPATH += ../dep/SDL/include
    LIBS += -lqwt_lorris -lqextserialport -lSDL -lqextserialport_lorris

    translations.path = /usr/share/lorris/
    translations.files = ../translations/Lorris.*.qm
    qext.path = /usr/lib/
    qext.files = ../dep/qextserialport/lib/libqextserialport_lorris.*
    target.path = /Applications/
    INSTALLS += target translations qext
}

python:unix {
    LIBS += -L"$$PWD/../dep/pythonqt" -lPythonQt
    DEFINES += WITH_PYTHON
    SOURCES += LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonengine.cpp
    HEADERS += LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonengine.h
}

python:win32 {
    LIBS += -L"$$PWD/../dep/pythonqt/win/" -lPythonQt
    DEFINES += WITH_PYTHON
    SOURCES += LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonengine.cpp
    HEADERS += LorrisAnalyzer/DataWidgets/ScriptWidget/engines/pythonengine.h

    QMAKE_POST_LINK = copy \""$$PWD\\..\\dep\\pythonqt\\win\\PythonQt.dll\"" \""$$PWD\\..\\bin\\release\\PythonQt.dll\""
}

# must be after lPythonQt, else it will not link properly on some compilers
include(../python.pri)

libusby {
    include(../dep/libusby/libusby.pri)
    DEFINES += HAVE_LIBUSBY
    SOURCES += \
        connection/usbshupitoconn.cpp
    HEADERS += \
        connection/usbshupitoconn.h
}

kate_editor:unix {
    DEFINES += USE_KATE
    LIBS += -lktexteditor -lkdecore
}

qsci_editor:win32 {
    DEFINES += USE_QSCI
    win32-msvc* {
        LIBS += -L"$$PWD/../dep/qscintilla2/msvc"
        CONFIG(debug, debug|release):LIBS += -lqscintilla2d
        else:LIBS += -lqscintilla2
    } else {
        LIBS += -L"$$PWD/../dep/qscintilla2/" -lqscintilla2
    }
    INCLUDEPATH += "$$PWD/../dep/qscintilla2/"
}

qsci_editor:unix {
    DEFINES += USE_QSCI
    LIBS += -lqscintilla2
}
