.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "ChannelPhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 25

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "SECRET_MODE_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v21, "DOWNLOAD_CLOUDBY"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v19, v21

    check-cast v19, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v18, v19, v21

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v21, "REFRESH_LAYOUT"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshLayout()V

    goto :goto_0

    :cond_3
    const-string/jumbo v21, "RENAME_EVENT_PHOTOVIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->setEvent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v21, "UPDATE_TITLE_EVENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v19, v21

    check-cast v19, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v16, v19, v21

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateCoverTitle()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v21, "START_SUGGESTION_SELECTOR"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getTotalMediaItemCount()I

    move-result v21

    move/from16 v0, v21

    rsub-int v5, v0, 0x1f4

    if-gtz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x1f4

    invoke-static/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    const/4 v10, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v19, v21

    check-cast v19, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v6, v19, v21

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v6

    check-cast v21, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSuggestionMediaItem()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/List;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_8

    const/4 v10, 0x1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_8
    const-string/jumbo v21, "ChannelPhotoViewState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Channel Suggestion TimeView Count="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setStorySuggestionSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v21, "pick-max-item"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v21, "enable-suggestion-add-all"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v21

    const-class v22, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v21

    sget-object v22, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v21

    sget-object v22, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    const-string/jumbo v22, "previousStateActivity"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v21

    const-class v22, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshStatusBarStyle(Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v21, "RESTART_SUGGESTION_ADD_COMPLETE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-string/jumbo v21, "ADDALL_SUGGESTION_ITEMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    :cond_b
    const-string/jumbo v21, "RESTART_SUGGESTION_ADD_COMPLETE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v21, "ADDALL_SUGGESTION_ITEMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v4

    if-eqz v12, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v19, v21

    check-cast v19, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v14, v19, v21

    check-cast v14, Ljava/util/ArrayList;

    :goto_1
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllCount()I

    move-result v8

    const/16 v15, 0x1f4

    if-eqz v11, :cond_d

    sub-int v21, v15, v8

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v21, v21, v22

    if-gez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSuggestionMediaItem()Ljava/util/ArrayList;

    move-result-object v14

    goto :goto_1

    :cond_d
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hideSuggestionObject()V

    :cond_e
    if-lt v8, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionSet(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionSet(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v22

    sub-int v23, v15, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->filterDuplicatedAndGetEnoughItems(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;I)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v22

    const-string/jumbo v23, "is_shared"

    invoke-static/range {v21 .. v23}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;Z)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v21, "REMOVE_SUGGESTION_ITEMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v21, "MEDIA_EJECT"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v9

    instance-of v0, v9, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    if-lez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v21, "RESET_SHARED_FRIENDSBAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v21, "RESTART_CHOOSE_SHARE_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    const-string/jumbo v21, "CHECK_CHANNEL_ITEM_NEED_TO_DOWNLOAD"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v23

    sget v24, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHARE_FROM_EVENTVIEW:I

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v21, "UPDATE_MENU"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$4000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v21, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$4100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$4200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$4300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v21, "SYSTEM_UI_VISIBILITY_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshLayout()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DOWNLOAD_NEARBY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DOWNLOAD_CLOUDBY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "RENAME_EVENT_PHOTOVIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "UPDATE_TITLE_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "START_SUGGESTION_SELECTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "RESTART_SUGGESTION_ADD_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "REMOVE_SUGGESTION_ITEMS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ADDALL_SUGGESTION_ITEMS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "RESET_SHARED_FRIENDSBAR"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "RESTART_CHOOSE_SHARE_DIALOG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "CHECK_CHANNEL_ITEM_NEED_TO_DOWNLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method
