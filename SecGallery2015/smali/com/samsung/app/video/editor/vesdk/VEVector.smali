.class public Lcom/samsung/app/video/editor/vesdk/VEVector;
.super Ljava/util/Vector;
.source "VEVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method private doDeleteInternally(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts(Z)V

    :cond_0
    return-void
.end method

.method private doDeleteInternallyForObject(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/vesdk/VEVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/app/video/editor/vesdk/VEVector;->doDeleteInternally(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/vesdk/VEVector;->doDeleteInternallyForObject(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
