.class public Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;
.super Ljava/lang/Object;
.source "LargeImageTilePool.java"


# instance fields
.field public volatile mIsTilePoolRecycled:Z

.field private final mPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearLargeImageTilePool()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->get()Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get()Lcom/sec/samsung/gallery/decoder/LargeImageTile;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    return-object v0
.end method
