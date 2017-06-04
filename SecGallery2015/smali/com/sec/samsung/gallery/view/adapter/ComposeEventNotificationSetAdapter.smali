.class public Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.source "ComposeEventNotificationSetAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComposeEventNotificationSetAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    return-void
.end method


# virtual methods
.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v3, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getAllCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllCount()I

    move-result v0

    return v0
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItemCount(I)I

    move-result v0

    return v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(IIZ)Z

    move-result v0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public setInitThumbType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    return-void
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-void
.end method

.method public setThumbReslevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setThumbReslevel(I)V

    return-void
.end method
