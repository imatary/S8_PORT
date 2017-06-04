.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const v7, 0x7f120275

    const v6, 0x7f120112

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v5, 0x7f120292

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->val$style:I

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isCoverScrollUp()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshStatusBarStyle(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionbarStyle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setUpBtnColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setAddContactColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f12007c

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseInviteInsteadOfShareEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202cd

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202cd

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202ce

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202ce

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v5, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarTitleColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setSelectionViewColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarBGColor(F)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120290

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120290

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202c2

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f1202c2

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v5, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v7, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120293

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120293

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120297

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120297

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120298

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120298

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120276

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120276

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120299

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v3, 0x7f120299

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v2, v1, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V
    invoke-static {v2, v6, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V

    goto/16 :goto_4
.end method
