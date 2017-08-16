bin_PROGRAMS=ping pong
ping_SOURCES=ping.cpp
pong_SOURCES=pong.cpp
nodist_pong_SOURCES=moc_pong.cpp

BUILT_SOURCES=moc_pong.cpp

CLEANFILES=moc_pong.cpp

moc_%.cpp: %.h
	@MOC@ -o$@ $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(MOC_CPPFLAGS) $<