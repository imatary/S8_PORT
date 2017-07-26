.class public Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;
.super Ljava/lang/Object;
.source "DeviceDisplayInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHdpi(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isMdpi(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xf0

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMdpi(I)Z
    .locals 1

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXhdpi(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isMdpi(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isHdpi(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
