.class public Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestState;
.super Ljava/lang/Object;
.source "EventShareConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventShareConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestState"
.end annotation


# static fields
.field private static final COMPLETE_STATE:I = 0x4

.field public static final FAILED_STATE:I = 0x5

.field private static final IDLE_STATE:I = 0x0

.field private static final READY_STATE:I = 0x1

.field public static final RUNNING_STATE:I = 0x2

.field public static final TYPE_NAME:[Ljava/lang/String;

.field public static final WAITING_STATE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "IDLE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "READY_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "RUNNING_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "WAITING_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "COMPLETE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "FAILED_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestState;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
