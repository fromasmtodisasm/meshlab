include (../../shared.pri)
HEADERS += io_ctm.h \
    $$VCGDIR/wrap/io_trimesh/import_ctm.h \
    $$VCGDIR/wrap/io_trimesh/export_ctm.h
SOURCES += io_ctm.cpp
TARGET = io_ctm

!CONFIG(system_openctm): INCLUDEPATH *= ../../external/OpenCTM-1.0.3/lib

win32-msvc.net:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-msvc2005:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-msvc2008:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-msvc2010:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-msvc2012:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-msvc2015:QMAKE_CXXFLAGS += /DOPENCTM_STATIC
win32-g++:DEFINES += OPENCTM_STATIC

win32-msvc:LIBS	+= ../../external/lib/win32-msvc/openctm.lib
win32-msvc2005:LIBS	+= ../../external/lib/win32-msvc2005/openctm.lib
win32-msvc2008:LIBS	+= ../../external/lib/win32-msvc2008/openctm.lib
win32-msvc2010:LIBS	+= ../../external/lib/win32-msvc2010/openctm.lib
win32-msvc2012:LIBS	+= ../../external/lib/win32-msvc2012/openctm.lib
win32-msvc2015:LIBS	+= ../../external/lib/win32-msvc2015/openctm.lib
win32-g++:LIBS		+= ../../external/lib/win32-gcc/libopenctm.a
linux-g++:LIBS		+= -lopenctm
#macx:LIBS += ../../external/lib/macx/libopenctm.a
macx:LIBS += $$MACLIBDIR/libopenctm.a
