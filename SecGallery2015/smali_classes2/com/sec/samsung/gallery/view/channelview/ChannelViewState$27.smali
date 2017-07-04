.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

.field final synthetic val$needToDownload:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->val$needToDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v12, 0x1

    const/4 v14, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v10

    sget-object v11, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v11

    if-eq v10, v11, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v10

    sget-object v11, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v11

    if-ne v10, v11, :cond_4

    :cond_2
    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const v11, 0x7f0a04cc

    invoke-static {v10, v11}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    if-lez v10, :cond_9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v11

    invoke-virtual {v10, v11, v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v11

    invoke-virtual {v10, v11, v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v11

    invoke-static {v10, v5, v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v10

    invoke-virtual {v10, v7, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    :goto_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v10

    const-class v11, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    const-string/jumbo v10, "KEY_MEDIA_SET_PATH"

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "KEY_MEDIA_SET_POSITION"

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v10, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->val$needToDownload:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "KEY_IS_NEED_TO_DOWNLOAD_EVENT"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v10

    sget-object v11, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    move-object v10, v6

    check-cast v10, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isNewChannel()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v10, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;

    const-string/jumbo v11, "UpdateStoryVisibleCh"

    invoke-direct {v10, p0, v11, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;Ljava/lang/String;I)V

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->start()V

    :cond_6
    move-object v1, v6

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1, v14}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setNewChannel(Z)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const-string/jumbo v11, "GEVA"

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v10, v11, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const v11, 0x7f0a0797

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const-string/jumbo v11, "StoryDetailView"

    sget-object v12, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v10, v11, v12, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10, v5, v14}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    const v9, 0x7f02011a

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    :cond_9
    const v9, 0x7f02011a

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v10

    invoke-virtual {v10, v7, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_2
.end method
