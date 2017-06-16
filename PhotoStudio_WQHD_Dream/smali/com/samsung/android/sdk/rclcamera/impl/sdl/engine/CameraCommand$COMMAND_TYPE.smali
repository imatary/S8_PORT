.class public final enum Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;
.super Ljava/lang/Enum;
.source "CameraCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMMAND_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CAMERA_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CANCEL_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CHANGE_PARAMETER:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CHECK_ASPECT_FOR_SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CHECK_ASPECT_TO_CAMCORDER_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CHECK_ASPECT_TO_CAMERA_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum EXPAND_TO_RECORDER_SIZE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum INITIALIZE_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum LOCK_ORIENTATION:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum NOTIFY_RECORDING_FINISHED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum OPEN_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum PAUSE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum RECORD_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum RESUME_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum START_AUTO_FOCUS:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum STOP_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum SWITCH_TO_FRONT_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum SWITCH_TO_REAR_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public static final enum TAKE_PICTURE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "OPEN_CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->OPEN_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CLOSE_CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "INITIALIZE_PARAM"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->INITIALIZE_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "RECORD_PARAM"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RECORD_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CAMERA_PARAM"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CAMERA_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "TAKE_PICTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->TAKE_PICTURE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CHANGE_PARAMETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHANGE_PARAMETER:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "START_PREVIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "STOP_PREVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "SWITCH_CAMERA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "PREPARE_RECORD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "START_RECORD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CANCEL_RECORD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CANCEL_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "PAUSE_RECORD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PAUSE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "RESUME_RECORD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RESUME_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "STOP_RECORD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "START_AUTO_FOCUS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_AUTO_FOCUS:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CHECK_ASPECT_TO_CAMCORDER_PREVIEW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMCORDER_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CHECK_ASPECT_TO_CAMERA_PREVIEW"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMERA_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "CHECK_ASPECT_FOR_SWITCH_CAMERA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_FOR_SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "LOCK_ORIENTATION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->LOCK_ORIENTATION:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "EXPAND_TO_RECORDER_SIZE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->EXPAND_TO_RECORDER_SIZE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "NOTIFY_RECORDING_FINISHED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->NOTIFY_RECORDING_FINISHED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "SWITCH_TO_REAR_CAMERA"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_REAR_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const-string v1, "SWITCH_TO_FRONT_CAMERA"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_FRONT_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->OPEN_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->INITIALIZE_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RECORD_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CAMERA_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->TAKE_PICTURE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHANGE_PARAMETER:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CANCEL_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PAUSE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RESUME_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_AUTO_FOCUS:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMCORDER_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMERA_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_FOR_SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->LOCK_ORIENTATION:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->EXPAND_TO_RECORDER_SIZE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->NOTIFY_RECORDING_FINISHED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_REAR_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_FRONT_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    return-object v0
.end method
