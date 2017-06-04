.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCurrentIndex()V
    .locals 2

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v1, "onChangeCurrentIndex() : mAutoPlayItem set null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAutoPlayItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public onFilmIndexChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setFocusIndex(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    return-void
.end method

.method public onLoadingFinished(Z)V
    .locals 10

    const/4 v3, 0x1

    const/4 v9, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DetailViewState : onLoadingFinished() is called!! loadingFailed = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSupportExitQuickViewWithFlick:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v3

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ActionImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/NoItemImage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->finishDetailView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v9

    goto :goto_0

    :cond_2
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_DUALSCREEN:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24100()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsNeedUpdateFromQuickView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsNeedUpdateFromQuickView:Z
    invoke-static {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setCurrentPhotoByQuickViewUpdate()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->finishDetailView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastEditContainerViewShowing()Z

    move-result v0

    if-nez v0, :cond_5

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11500()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateLayout()V

    :cond_5
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_SOCIAL_STORY_VIEW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v4

    if-ne v4, v3, :cond_c

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getUniquePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->updateItemInfo(Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;IZLjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFlagLeaveEditView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFlagLeaveEditView:Z
    invoke-static {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMimeType:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lcom/sec/samsung/gallery/view/detailview/Model;->initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playPendedPlayer(ILcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isActiveMultiFormatShare()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHOW_IMAGE_VIDEO_SHARE_DIALOG"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsfromCameraViewContentOn:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsfromCameraViewContentOn:Z
    invoke-static {v0, v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25502(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showChangePlayerFromOption()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->restartMoreInfo()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :cond_c
    move v3, v9

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsActive:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v1, "onLoadingFinished, mModel is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->closeMoreInfoOnUiThread()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_DUALSCREEN:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24100()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x75

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method

.method public onLoadingStarted()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "DetailViewState : onLoadingStarted() is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimePhotoAvailable:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    return-void
.end method

.method public onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DetailViewState"

    const-string/jumbo v2, "onMenuRefresh called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPhotoAvailable(Lcom/sec/android/gallery3d/data/Path;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimePhotoAvailable:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video/mp2ts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimePhotoAvailable:Z
    invoke-static {v1, v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBars:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initialized()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->initialize(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBarManager:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->enableFastOptonViewShow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->refreshHidingMessage()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCameraQuickViewTimer:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCameraQuickViewTimer:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->startTimer()V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoEditorFinishManager:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoEditorFinishManager:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->getLaunchedPhotoEditor()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p2, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoEditorFinishManager:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->isBoundWithPhotoEditorService()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-ne p1, v1, :cond_7

    const-string/jumbo v1, "DetailViewState"

    const-string/jumbo v2, "Edited image available, hide photo editor view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoEditorFinishManager:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->sendMessage(I)V

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoEditorFinishManager:Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->setLaunchedPhotoEditor(Z)V

    :cond_8
    return-void
.end method

.method public onPhotoChanged(ILcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimePhotoAvailable:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    if-le v1, p1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->imageSlideDirection:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->removeGlAccessibilityFocus()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11500()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFlagLeaveEditView:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastEditContainerViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setContentType(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCamera:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->refreshHidingMessage()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const-wide/16 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAgifVersion:J
    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;J)J

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setFocusIndex(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mResultIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setStateResult(ILandroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ILandroid/content/Intent;)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_VISION_INTELLIGENCE:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24500()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mVisionIntelligenceHelpPopup:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mVisionHelpPopupFirst:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    if-ge v1, p1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v2, 0x2

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->imageSlideDirection:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->imageSlideDirection:I
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_DUALSCREEN:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24100()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateBars()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_2
.end method

.method public onPhotoFailedToLoad()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCameraQuickViewTimer:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCameraQuickViewTimer:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->startTimer()V

    :cond_0
    return-void
.end method
