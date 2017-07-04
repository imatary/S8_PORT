.class Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;
.super Ljava/lang/Object;
.source "ComposeViewDataLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;->onAllContentReady()V

    :cond_0
    return-void
.end method

.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 7

    const/4 v5, -0x1

    :try_start_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$600(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$600(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$700(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    aget-object v0, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$800(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketMediaItemCount()I

    move-result v3

    if-ne v3, v5, :cond_7

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->isUrgent()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    array-length v3, v3

    iget v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    if-ne v3, p1, :cond_0

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$900(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$900(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    move-result-object v3

    iget v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    iget v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mType:I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getZoomLevel()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;->onContentUpdated(III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ComposeViewDataLoader"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketMediaItemCount()I

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$900(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    move-result-object v3

    iget v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    iget v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mType:I

    const/4 v6, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;->onContentUpdated(III)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
