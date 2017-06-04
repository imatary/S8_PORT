.class public final enum Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;
.super Ljava/lang/Enum;
.source "EventErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum MAXSIZEPERDAY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

.field public static final enum USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "SERVER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "DEVICE"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const-string/jumbo v1, "MAXSIZEPERDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->MAXSIZEPERDAY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->MAXSIZEPERDAY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    return-object v0
.end method
