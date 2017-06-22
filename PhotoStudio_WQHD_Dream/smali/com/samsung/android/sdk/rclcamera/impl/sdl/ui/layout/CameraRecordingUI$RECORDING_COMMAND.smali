.class public final enum Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;
.super Ljava/lang/Enum;
.source "CameraRecordingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RECORDING_COMMAND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

.field public static final enum RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

.field public static final enum RECORDING_PAUSE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

.field public static final enum RECORDING_RESUME:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

.field public static final enum RECORDING_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

.field public static final enum RECORDING_STOP:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const-string v1, "RECORDING_START"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const-string v1, "RECORDING_STOP"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_STOP:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const-string v1, "RECORDING_PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_PAUSE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const-string v1, "RECORDING_RESUME"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_RESUME:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const-string v1, "RECORDING_CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_STOP:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_PAUSE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_RESUME:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    return-object v0
.end method
