.class public final enum Lcom/sec/android/gallery3d/ui/playicon/IconType;
.super Ljava/lang/Enum;
.source "IconType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/ui/playicon/IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum DISPLAY3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum INTERACTIVE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum SEQUENCE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum SLOW_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum SOUND_SCENE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

.field public static final enum VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;


# instance fields
.field private iconClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/ui/playicon/Icon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "NO_ICON"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "FLIP_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "FLIP_PHOTO"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "VIDEO360"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "IMAGE360"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "SLOW_MOTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SLOW_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "FAST_MOTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "HYPER_MOTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "SOUND_SCENE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SOUND_SCENE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "DISPLAY3D"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->DISPLAY3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "PANORAMA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "PANORAMA3D"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "SHOT_AND_MORE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "TOUR3D"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "OUT_OF_FOCUS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "SEQUENCE_SHOT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SEQUENCE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "INTERACTIVE_SHOT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->INTERACTIVE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "BURST_SHOT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "UNLOCK"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "NO_ITEM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "BROKEN_IMAGE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "BROKEN_VIDEO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "MOTION_PANORAMA"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "MOTION_PHOTO"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "SELF_MOTION_PANORAMA"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "RAW_IMAGE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "CLOUD_ONLY_ITEM"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    new-instance v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-string/jumbo v1, "ONLY_CLOUD_VIDEO"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/playicon/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SLOW_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SOUND_SCENE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->DISPLAY3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SEQUENCE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->INTERACTIVE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->$VALUES:[Lcom/sec/android/gallery3d/ui/playicon/IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static initClass()V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/NoIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/FlipVideoPlayIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/FlipPhotoIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/Video360PlayIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SLOW_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/SlowMotionIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/FastMotionIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/HyperMotionIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SOUND_SCENE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/SoundSceneIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->DISPLAY3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/Display3DIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/PanoramaIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/Panorama3DIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/ShotAndMoreIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/Tour3DIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/OutOfFocusIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SEQUENCE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/SequenceShotIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->INTERACTIVE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/InteractiveShotIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/MotionPanoramaIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/SelfMotionPanoramaIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/MotionPhotoIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/RawImageIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/VideoCloudIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const-class v1, Lcom/sec/android/gallery3d/ui/playicon/CloudOnlyIcon;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->setClass(Ljava/lang/Class;)V

    return-void
.end method

.method private setClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/ui/playicon/Icon;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->iconClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/ui/playicon/IconType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/ui/playicon/IconType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->$VALUES:[Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/ui/playicon/IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/ui/playicon/IconType;

    return-object v0
.end method


# virtual methods
.method public getIconClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/ui/playicon/Icon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->iconClass:Ljava/lang/Class;

    return-object v0
.end method
