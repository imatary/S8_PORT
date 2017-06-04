.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final MULTI_UPLOAD_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;->getMaxChunkSize()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;->MULTI_UPLOAD_SIZE:I

    return-void
.end method

.method public static getMaxChunkSize()I
    .locals 2

    const/high16 v1, 0x100000

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getEnableBadNetworkPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method
