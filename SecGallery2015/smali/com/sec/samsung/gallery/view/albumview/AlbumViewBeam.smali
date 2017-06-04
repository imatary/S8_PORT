.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;
.super Ljava/lang/Object;
.source "AlbumViewBeam.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumViewBeam"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->toItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private toItemList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object v1, v2

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public setBeamListener()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam$1;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_BEAM"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
