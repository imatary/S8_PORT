.class public final enum Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
.super Ljava/lang/Enum;
.source "EventErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

.field public static final enum FAIL:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

.field public static final enum RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

.field public static final enum SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    const-string/jumbo v1, "RETRY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->FAIL:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    const-string/jumbo v1, "SILENT_RETRY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->FAIL:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    return-object v0
.end method
