.class public Lcom/sec/android/gallery3d/eventshare/EventShareConstants$EventType;
.super Ljava/lang/Object;
.source "EventShareConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventShareConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation


# static fields
.field public static final GUEST_TYPE:I = 0x2

.field public static final HOST_TYPE:I = 0x1

.field public static final LIVE_TYPE:I = 0x3

.field public static final NONE_TYPE:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "SHARE_EVENT_TYPE"

.field public static final TYPE_MAX:I = 0x4

.field public static final TYPE_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NONE_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "HOST_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "GUEST_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "LIVE_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "BROKEN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$EventType;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
