.class public Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;
.super Ljava/lang/Object;
.source "EventErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;,
        Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
    }
.end annotation


# static fields
.field private static final NETWORK_IO_ERROR:J = 0x2afbL

.field private static final NO_NETWORK_CONNECTION:I = -0xa

.field private static final TAG:Ljava/lang/String; = "EventErrorCode"

.field private static mRertyCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mSilentRertyCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mRertyCode:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mSilentRertyCode:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkErrorCode(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
    .locals 4

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mRertyCode:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->FAIL:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    goto :goto_0
.end method

.method public static checkRecoverFolderToken(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v0

    const-string/jumbo v1, "EventErrorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x30

    if-eq v0, v1, :cond_0

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkShareErrorCode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mSilentRertyCode:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EventErrorCode"

    const-string/jumbo v1, "EventErrorCode SILENT RETRY"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->FAIL:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    goto :goto_0
.end method

.method public static getErrorFrom(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v0

    const-string/jumbo v1, "EventErrorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    :goto_0
    return-object v1

    :sswitch_0
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    goto :goto_0

    :sswitch_4
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->MAXSIZEPERDAY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x66 -> :sswitch_4
        -0x30 -> :sswitch_3
        -0x2f -> :sswitch_3
        -0x2e -> :sswitch_1
        -0x1a -> :sswitch_2
        -0x19 -> :sswitch_3
        -0x17 -> :sswitch_2
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_1
        -0xc -> :sswitch_0
        -0xb -> :sswitch_3
        -0xa -> :sswitch_0
        -0x6 -> :sswitch_1
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public static initErrorCode()V
    .locals 4

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mRertyCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mSilentRertyCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mRertyCode:Ljava/util/ArrayList;

    const-wide/16 v2, 0x2afb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->mSilentRertyCode:Ljava/util/ArrayList;

    const/16 v1, -0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
