.class public final enum Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;
.super Ljava/lang/Enum;
.source "CameraRecordingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RECORDING_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

.field public static final enum STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

.field public static final enum STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

.field public static final enum STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    const-string v1, "STATE_START"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    const-string v1, "STATE_PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    const-string v1, "STATE_STOP"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    return-object v0
.end method
