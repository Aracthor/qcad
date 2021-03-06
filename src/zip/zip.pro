include( ../../shared.pri )

INCLUDEPATH+=../3rdparty/quazip/src

greaterThan(QT_MAJOR_VERSION, 4) {
    INCLUDEPATH += $$[QT_INSTALL_HEADERS]/QtZlib
}
else {
    INCLUDEPATH += $$[QT_INSTALL_HEADERS]/../src/3rdparty/zlib
}

HEADERS = \
    RZip.h

SOURCES = \
    RZip.cpp

TEMPLATE = lib
r_static_libs {
    CONFIG += staticlib
}
else {
    CONFIG += plugin
}
TARGET = $${RLIBNAME}zip
LIBS += -l$${RLIBNAME}core -lquazip
OTHER_FILES += zip.dox
DEFINES += QCADZIP_LIBRARY
RC_FILE = zip.rc

#POST_TARGETDEPS += ../../$$ROUTDIR/$${RLIBPRE}zip$${RLIBPOSTDLL}
