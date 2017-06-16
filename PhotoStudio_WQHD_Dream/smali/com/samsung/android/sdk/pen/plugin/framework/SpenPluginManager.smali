.class public Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
.super Ljava/lang/Object;
.source "SpenPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;
    }
.end annotation


# static fields
.field private static final BINARY_TYPE_INDEX:I = 0x4

.field private static final BINARY_TYPE_JAVA:I = 0x0

.field private static final BINARY_TYPE_NATIVE:I = 0x1

.field private static final BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

.field private static final CLASS_NAME_INDEX:I = 0xd

.field private static final EXTRA_INFO_INDEX:I = 0xa

.field private static final FOCUSED_ICON_IMAGE_URI_INDEX:I = 0x9

.field private static final HAS_PRIVATE_KEY_INDEX:I = 0x5

.field private static final ICON_IMAGE_URI_INDEX:I = 0x6

.field private static final INTERFACE_NAME_INDEX:I = 0x2

.field private static final INTERFACE_VERSION_INDEX:I = 0x3

.field private static final PACKAGE_NAME_INDEX:I = 0xc

.field private static final PLUGIN_NAME_URI_INDEX:I = 0xb

.field private static final PRESET_ICON_IMAGE_URI_INDEX:I = 0x8

.field private static final SELECTED_ICON_IMAGE_URI_INDEX:I = 0x7

.field private static final TYPE_INDEX:I = 0x0

.field private static final VERSION_INDEX:I = 0x1

.field private static mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;


# instance fields
.field private mBuiltInPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIs64:Z

.field private mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

.field private final mLoadedPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pen"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "SpenPenInterface"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "native"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "snote_popup_pensetting_montblanc_fountainpen"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snote_popup_pensetting_montblanc_fountainpen_select"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "snote_popup_pensetting_montblanc_fountainpen"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "snote_popup_pensetting_montblanc_fountainpen"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "MontblancFountainPen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "MontblancFountainPen"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MontblancFountainPen"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pen"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "SpenPenInterface"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "native"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "snote_popup_pensetting_montblanc_calligraphypen"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snote_popup_pensetting_montblanc_calligraphypen_select"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "snote_popup_pensetting_montblanc_calligraphypen"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "snote_popup_pensetting_montblanc_calligraphypen"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "MontblancCalligraphyPen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "MontblancCalligraphyPen"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MontblancCalligraphyPen"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pen"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "SpenPenInterface"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "native"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "snote_popup_pensetting_fountainpen_sdk4"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snote_popup_pensetting_fountainpen_select_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "snote_popup_pensetting_fountainpen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "snote_popup_pensetting_fountainpen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "FountainPen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "FountainPen"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "FountainPen"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pen"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "SpenPenInterface"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "native"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "snote_popup_pensetting_calligraphypen_sdk4"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snote_popup_pensetting_calligraphypen_select_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "snote_popup_pensetting_calligraphypen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "snote_popup_pensetting_calligraphypen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ObliquePen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ObliquePen"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "ObliquePen"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pen"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "SpenPenInterface"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "native"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "snote_popup_pensetting_pen_sdk4"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snote_popup_pensetting_pen_select_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "snote_popup_pensetting_pen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "snote_popup_pensetting_pen_sdk4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "InkPen"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "InkPen"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "InkPen"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_pencil_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Pencil2"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Pencil2"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Pencil2"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_pencil_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_pencil_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Pencil"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Pencil"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Pencil"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_chinabrush_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ChineseBrush"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ChineseBrush"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ChineseBrush"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_correctpen_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_correctpen_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_correctpen_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_correctpen_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MagicPen"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "MagicPen"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "MagicPen"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_chinabrush_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Beautify"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Beautify"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Beautify"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_chinabrush_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_chinabrush_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Brush"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Brush"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Brush"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pen"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenPenInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "native"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "snote_popup_pensetting_marker_sdk4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "snote_popup_pensetting_marker_select_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snote_popup_pensetting_marker_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "snote_popup_pensetting_marker_sdk4"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Marker"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Marker"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.pen.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Marker"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ObjectRuntime"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenObjectRuntimeInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "defaultIconImageURI"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "defaultIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "defaultIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "extraInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Video"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.objectruntime.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Video"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "recognition"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenLanguageRecognitionInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "extraInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Text"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.text"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "TextRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "TextRecognition"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenLanguageRecognitionInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "1/4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SpenText"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "TextRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EquationRecognition"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenRecognitionInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "1/4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SpenEquation"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "EquationRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ShapeRecognition"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenRecognitionInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "1/4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SpenShape"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ShapeRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ShapeRecognition"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenRecognitionInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "1/4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NRRShape"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "NRRShapeRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SignatureVerification"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenSignatureVerificationInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "extraInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SpenSignature"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Signature"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SignatureVerification"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "SpenSignatureVerificationInterface"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "java"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "selectedIconImageURI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "uriInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "extraInfo"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NRRSignature"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.samsung.android.sdk.pen.recognition.preload"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "NRRSignatureRecognitionPlugin"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
    .locals 20

    const-class v14, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    monitor-enter v14

    if-nez p0, :cond_0

    :try_start_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_0
    :try_start_1
    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-nez v13, :cond_10

    new-instance v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {v13}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;-><init>()V

    sput-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    new-instance v15, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    invoke-direct {v15}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;-><init>()V

    iput-object v15, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v15, "E_INVALID_STATE : Fail to create JniPluginManager"

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    if-nez v13, :cond_2

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v15, "E_INVALID_STATE : Fail to create ArrayList for BuiltInPluginList"

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    sget-object v15, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    aget-object v12, v15, v13

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    aget-object v17, v12, v17

    const-string v18, "Pen"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->isExistedSPen([Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "PluginManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "do not load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0xd

    aget-object v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " library"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    const/16 v17, 0x2

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    const/16 v17, 0x3

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceVersion:I

    const/16 v17, 0x4

    aget-object v4, v12, v17

    const/16 v17, 0x5

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    const/16 v17, 0x6

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    const/16 v17, 0x7

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    const/16 v17, 0x8

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->presetIconImageUri:Ljava/lang/String;

    const/16 v17, 0x9

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->focusedIconImageUri:Ljava/lang/String;

    const/16 v17, 0xa

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const/16 v17, 0xb

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    const/16 v17, 0xc

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0xd

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    const-string v17, "native"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    :goto_2
    sget-object v17, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    goto :goto_3

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    goto :goto_2

    :cond_7
    sget-object v17, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    :try_start_2
    const-string v13, "plugin.ini"

    invoke-virtual {v11, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    :goto_4
    const/4 v13, 0x1

    if-ne v6, v13, :cond_e

    const/4 v10, 0x0

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v13, v9, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_9
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    new-instance v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;-><init>()V

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v13, v3

    const/16 v15, 0xe

    if-ne v13, v15, :cond_9

    const/4 v13, 0x0

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    const/4 v13, 0x2

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceVersion:I

    const/4 v13, 0x4

    aget-object v4, v3, v13

    const/4 v13, 0x5

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    const/4 v13, 0x6

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    const/16 v13, 0x8

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->presetIconImageUri:Ljava/lang/String;

    const/16 v13, 0x9

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->focusedIconImageUri:Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const/16 v13, 0xb

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    const/16 v13, 0xc

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    const/16 v13, 0xd

    aget-object v13, v3, v13

    iput-object v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    const-string v13, "native"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    iput v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    :goto_6
    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v15, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v0, v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_7

    :catch_0
    move-exception v7

    :try_start_4
    const-string v13, "PluginManager"

    const-string v15, "Fail to read Plugin List of App"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v13, 0x0

    :try_start_5
    iput v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v7

    :try_start_6
    const-string v13, "PluginManager"

    const-string v15, "I/O error occurs"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v15, "E_INVALID_STATE : Fail to update ArrayList for BuiltInPluginList of App"

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :try_start_7
    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v7

    :try_start_8
    const-string v13, "PluginManager"

    const-string v15, "I/O error occurs"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v15, "E_INVALID_STATE : Fail to update ArrayList for BuiltInPluginList of App"

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_e
    if-eqz v9, :cond_f

    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v9, 0x0

    :cond_f
    :goto_8
    :try_start_b
    const-string v13, "PluginManager"

    const-string v15, "Constructor is completed."

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sget-object v13, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v14

    return-object v13

    :catch_3
    move-exception v7

    :try_start_c
    const-string v13, "PluginManager"

    const-string v15, "I/O error occurs"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8
.end method

.method private static isExistedSPen([Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p0, v3

    const-string v2, "Beautify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SPenChineseBrush"

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/Spen;->isLoadedSpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNativeHandle(Ljava/lang/Object;)I
    .locals 10

    const-string v5, "PluginManager"

    const-string v8, "getNativeHandle()"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v9, v1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNativeHandle() is completed. returns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v5, v6

    return v5

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getNativeHandle_64(Ljava/lang/Object;)J
    .locals 10

    const-string v5, "PluginManager"

    const-string v8, "getNativeHandle()"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v9, v1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNativeHandle() is completed. returns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getPluginInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;
    .locals 4

    const-string v2, "PluginManager"

    const-string v3, "getPluginInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "E_INVALID_ARG : parameter \'uuid\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PluginManager"

    const-string v3, "getPluginInfo() returns false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public getPluginList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;",
            ">;"
        }
    .end annotation

    const-string v3, "PluginManager"

    const-string v4, "getPluginList()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "E_INVALID_ARG : parameter \'type\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PluginManager"

    const-string v4, "getPluginList() is completed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "all"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPrivateKeyHint(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->getPrivateKeyHint()Ljava/lang/String;

    move-result-object v0

    :cond_2
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public loadPlugin(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v8, "PluginManager"

    const-string v9, "loadPlugin()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "E_INVALID_STATE : Unable to Use loadPlugin by null Activity"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "E_INVALID_STATE : Unable to Use loadPlugin by null JniPluginManager"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    if-nez p2, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v2, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v1, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder;->build(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_9

    new-instance v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    invoke-direct {v7}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;-><init>()V

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->type:Ljava/lang/String;

    iget v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    iput v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->dummyObject:Ljava/lang/Object;

    iget v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {v8}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_0
    iput-object v6, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {v8, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->unlock(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "E_INVALID_ARG : parameter \'key\' is wrong"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    goto :goto_0

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v10, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    invoke-virtual {v8, v10, v11, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(JLandroid/content/Context;)V

    :cond_9
    :goto_1
    const-string v8, "PluginManager"

    const-string v9, "loadPlugin() is completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v10, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    long-to-int v9, v10

    invoke-virtual {v8, v9, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(ILandroid/content/Context;)V

    goto :goto_1

    :cond_b
    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {v8, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onLoad(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v8, "PluginManager"

    const-string v9, "loadPlugin()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "E_INVALID_STATE : Unable to Use loadPlugin by null Context"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "E_INVALID_STATE : Unable to Use loadPlugin by null JniPluginManager"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    if-nez p2, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v2, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v1, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder;->build(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_9

    new-instance v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    invoke-direct {v7}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;-><init>()V

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->type:Ljava/lang/String;

    iget v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    iput v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->dummyObject:Ljava/lang/Object;

    iget v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {v8}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_0
    iput-object v6, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {v8, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->unlock(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "E_INVALID_ARG : parameter \'key\' is wrong"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    goto :goto_0

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-wide v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v10, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    invoke-virtual {v8, v10, v11, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(JLandroid/content/Context;)V

    :cond_9
    :goto_1
    const-string v8, "PluginManager"

    const-string v9, "loadPlugin() is completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v10, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    long-to-int v9, v10

    invoke-virtual {v8, v9, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(ILandroid/content/Context;)V

    goto :goto_1

    :cond_b
    move-object v8, v5

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {v8, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onLoad(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;)V
    .locals 2

    const-string v0, "PluginManager"

    const-string v1, "setListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG : parameter \'listener\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "PluginManager"

    const-string v1, "setPluginListener() is completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unloadPlugin(Ljava/lang/Object;)V
    .locals 12

    const-string v6, "PluginManager"

    const-string v7, "unloadPlugin()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "E_INVALID_STATE : Unable to Use unloadPlugin by null JniPluginManager"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "E_INVALID_ARG : proxy handler of object is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v6, v3, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    const-string v6, "PluginManager"

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v8, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onUnload(J)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 p1, 0x0

    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_7

    const-string v6, "PluginManager"

    const-string v7, "unloadPlugin() returns false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "E_INVALID_ARG : Data to unload does not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    long-to-int v8, v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onUnload(I)V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_6
    :try_start_2
    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onUnload()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_7
    const-string v6, "PluginManager"

    const-string v7, "unloadPlugin() is completed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
