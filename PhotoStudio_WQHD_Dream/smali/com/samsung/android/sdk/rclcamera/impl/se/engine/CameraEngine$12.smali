.class synthetic Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->values()[Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_CANCELED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_COMPLETED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->PREPARE_RECORDING_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->START_RECORDING_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->TAKE_PICTURE_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraEngine$ENGINE_MESSAGE:[I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
