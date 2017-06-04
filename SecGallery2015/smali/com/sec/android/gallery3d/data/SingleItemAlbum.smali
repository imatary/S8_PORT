.class public Lcom/sec/android/gallery3d/data/SingleItemAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "SingleItemAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleItemAlbum"


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SingleItemAlbum("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/SingleItemAlbum;->mDataVersion:J

    return-wide v0
.end method
