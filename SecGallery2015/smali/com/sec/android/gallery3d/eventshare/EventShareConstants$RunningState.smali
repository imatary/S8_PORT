.class public Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RunningState;
.super Ljava/lang/Object;
.source "EventShareConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventShareConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningState"
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x2

.field private static final IDLE:I = 0x0

.field public static final TYPE_NAME:[Ljava/lang/String;

.field public static final UPLOADING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "IDLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UPLOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DOWNLOADING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RunningState;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
