.class final Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;
.super Landroid/util/SparseArray;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6101"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6104"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6106"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6111"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6111"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6114"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6114"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_DOWNLOAD_EFFECT:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "5092"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_DOWNLOAD_SHOOTINGMODE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1292"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "6102"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CHECK_INSIDE_POCKET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1901"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TALK_BACK_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1904"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_SHOOTINGMODE_SEPARATED:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1907"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SHOOTING_MODE_INVALID_DEVICE_VERSION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1232"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SHOOTING_MODE_INVALID_VERSION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "1234"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->WATERMARK_NETWORK_PERMISSION_DLG:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v0

    const-string v1, "9024"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap$3;->put(ILjava/lang/Object;)V

    return-void
.end method
