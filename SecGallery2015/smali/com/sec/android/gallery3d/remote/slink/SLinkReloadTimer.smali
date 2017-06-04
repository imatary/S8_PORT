.class Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;
.super Ljava/lang/Object;
.source "SLinkReloadTimer.java"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xbb8L

.field private static final MSG_SET_EXPIRED:I = 0x2

.field private static final MSG_WAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SLinkReloadTimer"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsExpired:Z

.field private final mSLinkStorage:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer$1;-><init>(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mSLinkStorage:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;)Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mSLinkStorage:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    return-object v0
.end method


# virtual methods
.method public getToken()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SLinkReloadTimer"

    const-string/jumbo v2, "getToken : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "SLinkReloadTimer"

    const-string/jumbo v2, "getToken : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTimeout()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mIsExpired:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "setTimeOut : Expired. ignore timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "setTimeOut : already waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SLinkReloadTimer"

    const-string/jumbo v1, "setTimeOut : send delayed message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
