.class public Lcom/sec/android/gallery3d/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private final mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mNotiUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mNotiUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-interface {p3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/sec/android/gallery3d/data/ChangeNotifier;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mNotiUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    invoke-interface {p3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/sec/android/gallery3d/data/ChangeNotifier;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public fakeChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->onChange()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mNotiUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirty()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public notifyDirty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method onChange()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChangeNotifier;->mNotiUri:Landroid/net/Uri;

    return-void
.end method
