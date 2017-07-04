.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;
.super Ljava/lang/Object;
.source "GalleryContentNotificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startPhotoView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

.field final synthetic val$albumIndex:I

.field final synthetic val$needToDownload:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$albumIndex:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$needToDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$albumIndex:I

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a04cc

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$albumIndex:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$albumIndex:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    invoke-static {v6, v2, v7}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6, v4, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mParentView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v7, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v7, "/channel/eventnotificationalbumset"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_SET_POSITION"

    iget v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$albumIndex:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->val$needToDownload:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "KEY_IS_NEED_TO_DOWNLOAD_EVENT"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    instance-of v6, v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v6, :cond_5

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setNewChannel(Z)V

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v6, v7, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v6, v2, v8}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_7
    const v5, 0x7f02011a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6, v4, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_2
.end method
