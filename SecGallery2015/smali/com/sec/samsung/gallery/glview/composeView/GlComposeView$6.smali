.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRootLayer()Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    instance-of v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_2

    move-object v6, p1

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    if-nez v6, :cond_3

    :cond_1
    const-string/jumbo v6, "GlComposeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick is canceled = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", enabled = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_0

    :cond_2
    iget-object v6, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v6}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "GlComposeView"

    const-string/jumbo v7, "onClick is canceled Enlarge = "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-nez v6, :cond_5

    move v6, v8

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsFlingAnim()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v8

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    add-int v3, v0, v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-nez v6, :cond_9

    :cond_8
    move v6, v8

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    sget v9, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v3, v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocus()V

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v9, 0x6

    if-ne v6, v9, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_c

    instance-of v6, v2, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v8, 0x7f0a049e

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v6, v10, v1, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    move v6, v8

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v6, "GlComposeView"

    const-string/jumbo v8, "onClick: item is null!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v6, v10, v1, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    move v6, v8

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-interface {v6, v7, p1, v8}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v6}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    :cond_f
    move v6, v8

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "4715"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    move v6, v8

    goto/16 :goto_0

    :cond_12
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1007"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
