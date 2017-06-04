.class Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;
.super Landroid/database/ContentObserver;
.source "SLinkStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SLinkChangeNotifier"
.end annotation


# instance fields
.field private final mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isDirty()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public notifyDirty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    const-string/jumbo v0, "SLinkChangeNotifier"

    const-string/jumbo v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SLinkChangeNotifier"

    const-string/jumbo v1, "Call mMediaSet.notifyContentChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    :cond_0
    return-void
.end method

.method public registerContentObserver(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SLinkStorage"

    const-string/jumbo v2, "Fail to register ContentObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SLinkStorage"

    const-string/jumbo v2, "Fail to unregister ContentObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
