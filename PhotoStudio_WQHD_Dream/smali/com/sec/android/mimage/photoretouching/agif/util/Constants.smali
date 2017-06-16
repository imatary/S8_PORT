.class public Lcom/sec/android/mimage/photoretouching/agif/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AGIF_PRIVATE_SAVE_PATH:Ljava/lang/String; = "Private/DCIM/Photo editor"

.field public static final AGIF_SAVE_PATH:Ljava/lang/String; = "DCIM/Photo editor"

.field public static final EXTERNAL_STORAGE:Ljava/lang/String;

.field public static final FEATURE_AGIF_10_FRAME_PER_SOUND:Ljava/lang/String; = "8613"

.field public static final FEATURE_AGIF_16_TO_9:Ljava/lang/String; = "8606"

.field public static final FEATURE_AGIF_1_TO_1:Ljava/lang/String; = "8603"

.field public static final FEATURE_AGIF_2_FRAME_PER_SOUND:Ljava/lang/String; = "8611"

.field public static final FEATURE_AGIF_3_TO_4:Ljava/lang/String; = "8605"

.field public static final FEATURE_AGIF_4_TO_3:Ljava/lang/String; = "8604"

.field public static final FEATURE_AGIF_5_FRAME_PER_SOUND:Ljava/lang/String; = "8612"

.field public static final FEATURE_AGIF_9_TO_16:Ljava/lang/String; = "8607"

.field public static final FEATURE_AGIF_ADD_IMAGE:Ljava/lang/String; = "8581"

.field public static final FEATURE_AGIF_BACKWARD:Ljava/lang/String; = "8621"

.field public static final FEATURE_AGIF_CANCEL_DECORATION:Ljava/lang/String; = "8632"

.field public static final FEATURE_AGIF_DECORATION:Ljava/lang/String; = "8557"

.field public static final FEATURE_AGIF_DIRECTION:Ljava/lang/String; = "8556"

.field public static final FEATURE_AGIF_EDIT:Ljava/lang/String; = "8553"

.field public static final FEATURE_AGIF_FORWARD:Ljava/lang/String; = "8622"

.field public static final FEATURE_AGIF_LOOP:Ljava/lang/String; = "8623"

.field public static final FEATURE_AGIF_OK_DECORATION:Ljava/lang/String; = "8633"

.field public static final FEATURE_AGIF_ORIGINAL:Ljava/lang/String; = "8602"

.field public static final FEATURE_AGIF_PLAY:Ljava/lang/String; = "8552"

.field public static final FEATURE_AGIF_RATIO:Ljava/lang/String; = "8554"

.field public static final FEATURE_AGIF_REMOVE_DECORATION:Ljava/lang/String; = "8631"

.field public static final FEATURE_AGIF_REMOVE_IMAGE:Ljava/lang/String; = "8582"

.field public static final FEATURE_AGIF_REORDER:Ljava/lang/String; = "8572"

.field public static final FEATURE_AGIF_SAVE:Ljava/lang/String; = "8551"

.field public static final FEATURE_AGIF_SELECT_FRAME:Ljava/lang/String; = "8571"

.field public static final FEATURE_AGIF_SHARE:Ljava/lang/String; = "8601"

.field public static final FEATURE_AGIF_SPEED:Ljava/lang/String; = "8555"

.field public static final FEATURE_AGIF_SWIPE_BACKWARD:Ljava/lang/String; = "8004"

.field public static final FEATURE_AGIF_SWIPE_FORWARD:Ljava/lang/String; = "8005"

.field public static final FEATURE_AGIF_UP_BUTTON:Ljava/lang/String; = "8001"

.field public static final FHD_Height:I = 0x438

.field public static final FHD_Width:I = 0x780

.field public static final FILE_DIR:Ljava/lang/String;

.field public static final HD_Height:I = 0x2d0

.field public static final HD_Width:I = 0x500

.field public static final MOTION_PHOTO_GRACE_SAVE_DIR:Ljava/lang/String;

.field public static final MOTION_PHOTO_PRIVATE_SAVE_DIR:Ljava/lang/String; = "/storage/Private/DCIM/Photo editor"

.field public static final MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

.field public static final QHD_Height:I = 0x21c

.field public static final QHD_Width:I = 0x3c0

.field public static final SCREEN_AGIF:Ljava/lang/String; = "846"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.agif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->FILE_DIR:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Animated GIF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_GRACE_SAVE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
