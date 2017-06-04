.class public Lcom/samsung/android/app/omcagent/network/ResultType;
.super Ljava/lang/Object;
.source "ResultType.java"


# static fields
.field public static final FAIL_FILE_WRITE:I = 0x19a

.field public static final FAIL_NETWORK_DISCONNECTED:I = 0x64

.field public static final FAIL_PROCESS:I = 0x190

.field public static final FAIL_ROAMING_LIMIT_MSG:I = 0x78

.field public static final FAIL_ROAMING_WIFIONLY:I = 0x6e

.field public static final FAIL_SERVICE:I = 0x1f4

.field public static final FAIL_USER_CANCEL:I = 0x320

.field public static final PROCESSING:I = 0x0

.field public static final SUCCESS:I = 0xc8

.field public static final UNKNOWN:I = 0x384


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkFail(I)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x78

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserCancel(I)Z
    .locals 1

    const/16 v0, 0x320

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
