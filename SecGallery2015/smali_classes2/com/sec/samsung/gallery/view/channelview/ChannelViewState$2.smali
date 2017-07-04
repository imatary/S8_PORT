.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 28

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v25, "MEDIA_EJECT"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v25

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    new-instance v26, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$1;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;)V

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v25, "EXIT_SELECTION_MODE"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v0, v8, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    new-instance v26, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$2;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;)V

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    goto :goto_0

    :cond_3
    const-string/jumbo v25, "COMPLETE_CREATE_NEW_EVENT"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    if-nez v25, :cond_5

    const/4 v4, -0x1

    :cond_4
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v4, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;II)Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_5
    move v4, v10

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$102(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v13, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$202(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;

    move-result-object v25

    const-wide/16 v26, 0x64

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v25, "DELETE_ANIM_START"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2100()Z

    move-result v25

    if-nez v25, :cond_d

    const/4 v11, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getAllCount()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_a

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v24

    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v10, v0, :cond_a

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v25

    if-nez v25, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v25

    sget-object v26, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    const/4 v14, 0x1

    :cond_a
    if-nez v11, :cond_b

    if-eqz v14, :cond_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive(Z)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_d
    const-string/jumbo v25, "REFRESH_LAYOUT"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v25, "UPDATE_TITLE_EVENT"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v20, v25

    check-cast v20, [Ljava/lang/Object;

    const/16 v25, 0x0

    aget-object v15, v20, v25

    check-cast v15, Ljava/lang/String;

    const/16 v25, 0x1

    aget-object v25, v20, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_f

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_f

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v25

    if-nez v25, :cond_11

    const/4 v4, -0x1

    :cond_f
    :goto_5
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    check-cast v25, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventTitle(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v15}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move v4, v10

    goto :goto_5

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_13
    const-string/jumbo v25, "CHECK_EVENT_SHARE_STATUS"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v25

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "sharing_service_on"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v25, "ChannelViewState"

    const-string/jumbo v26, "DB CLEAR : Register Account "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$2900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->restoreEventSharingService(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "sharing_service_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_0

    const-string/jumbo v25, "ChannelViewState"

    const-string/jumbo v26, "Core apps Service off : delete Shared Event"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingRegisterOn(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_16

    const-string/jumbo v25, "ChannelViewState"

    const-string/jumbo v26, "account expire : Revert Shared Event"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v25

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->revertSharedChannels(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "sharing_register_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "sharing_service_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$3900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string/jumbo v25, "ChannelViewState"

    const-string/jumbo v26, "account off  : delete Shared Event with server"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "sharing_service_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v25

    if-lez v25, :cond_0

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewEventMemberListView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-eqz v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteMemberFromAllGroupWithSuccession(Landroid/content/Context;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteMemberFromAllGroup(Landroid/content/Context;)V

    goto :goto_6

    :cond_18
    const-string/jumbo v25, "RESTORE_EVENT_SHARE_INVITE_PUSH"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->restoreInviteEvent(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    const-string/jumbo v26, "need_to_restore_invite_push"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$4900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v25, "UPDATE_MENU"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v25, "UPDATE_MORE_MENU_BADGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/view/Menu;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateMoreMenuBadge(Landroid/view/Menu;Z)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v25, "SYSTEM_UI_VISIBILITY_CHANGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "UPDATE_TITLE_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CHECK_EVENT_SHARE_STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "RESTORE_EVENT_SHARE_INVITE_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UPDATE_MORE_MENU_BADGE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method
