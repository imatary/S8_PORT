.class public final enum Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;
.super Ljava/lang/Enum;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunningType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

.field public static final enum DOWNLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

.field public static final enum IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

.field public static final enum UPLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    const-string/jumbo v1, "UPLOADING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->UPLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->DOWNLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->UPLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->DOWNLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->$VALUES:[Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    return-object v0
.end method
