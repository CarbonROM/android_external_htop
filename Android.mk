LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := \
    -pedantic -Wall -Wextra -std=c99 -DSYSCONFDIR=\"/product/etc\"

LOCAL_CFLAGS += \
    -Wno-gnu-include-next -Wno-enum-conversion -Wno-deprecated-declarations

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/linux \
    external/libncurses/include

LOCAL_SRC_FILES := \
    Action.c \
    Affinity.c \
    AffinityPanel.c \
    AvailableColumnsPanel.c \
    AvailableMetersPanel.c \
    BatteryMeter.c \
    CategoriesPanel.c \
    CheckItem.c \
    ClockMeter.c \
    ColorsPanel.c \
    ColumnsPanel.c \
    CPUMeter.c \
    CRT.c \
    DisplayOptionsPanel.c \
    EnvScreen.c \
    FunctionBar.c \
    Hashtable.c \
    Header.c \
    HostnameMeter.c \
    htop.c \
    IncSet.c \
    InfoScreen.c \
    ListItem.c \
    LoadAverageMeter.c \
    MainPanel.c \
    MemoryMeter.c \
    Meter.c \
    MetersPanel.c \
    Object.c \
    OpenFilesScreen.c \
    Panel.c \
    Process.c \
    ProcessList.c \
    RichString.c \
    ScreenManager.c \
    Settings.c \
    SignalsPanel.c \
    StringUtils.c \
    SwapMeter.c \
    TasksMeter.c \
    TraceScreen.c \
    UptimeMeter.c \
    UsersTable.c \
    Vector.c \
    XAlloc.c \
    linux/Battery.c \
    linux/IOPriority.c \
    linux/IOPriorityPanel.c \
    linux/LinuxCRT.c \
    linux/LinuxProcess.c \
    linux/LinuxProcessList.c \
    linux/Platform.c \
    linux/PressureStallMeter.c \
    zfs/ZfsArcMeter.c \
    zfs/ZfsArcStats.c \
    zfs/ZfsCompressedArcMeter.c

LOCAL_SHARED_LIBRARIES := libncurses

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := htop

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_OPTIONAL_EXECUTABLES)
LOCAL_PRODUCT_MODULE := true

include $(BUILD_EXECUTABLE)
