.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "EXPN"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1036"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-interface {v4, v5, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v3, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    goto/16 :goto_0
.end method
