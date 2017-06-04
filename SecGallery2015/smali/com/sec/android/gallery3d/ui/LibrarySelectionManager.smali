.class public Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;
.super Lorg/puremvc/java/multicore/patterns/proxy/Proxy;
.source "LibrarySelectionManager.java"


# instance fields
.field private final mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mStorySuggestionSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final mediaList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "SELECTION_MANAGER"

    invoke-direct {p0, v0}, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mClickedSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public enterSelectionMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->removeAll()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInSelectionMode:Z

    goto :goto_0
.end method

.method public getMediaList()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getStorySuggestionSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mStorySuggestionSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public inSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/sec/android/gallery3d/data/Path;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method leaveSelectionMode()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInSelectionMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mInverseSelection:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method removeAll()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSourceMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method public setStorySuggestionSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->mStorySuggestionSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method
