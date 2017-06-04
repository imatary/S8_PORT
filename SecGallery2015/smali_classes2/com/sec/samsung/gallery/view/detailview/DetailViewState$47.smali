.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateShowBar()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimeLaunch:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mExpansionDetailViewMode:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromMapView:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromEventMapView:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCategoryView:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v4, v5, :cond_0

    if-eqz v1, :cond_7

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "com.android.gallery.action.SEARCH_VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBars:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBarManager:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->enableActioBarShow()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBarManager:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->isActionBarShowOn()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_1
    const-string/jumbo v4, "isFromCrossPicker"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x71

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCamera:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-wide v4, v6

    :goto_1
    invoke-virtual {v10, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_2
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->SUPPORT_KNOX_DESKTOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33500()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForZoomButton(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFlagForExpandMode:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForNavigatingButton(Z)V

    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBars:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBarManager:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->enableFastOptonViewShow()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBarManager:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->isFastOptionViewOn()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_4
    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x72

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCamera:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v6, v8

    :cond_5
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-wide/16 v4, 0x1f4

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimeLaunch:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewStateHelper;->isActionBarShowing(Lcom/sec/samsung/gallery/view/ActionBarManager;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showActionBar()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const-wide/16 v10, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAnimationStartTime:J
    invoke-static {v4, v10, v11}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;J)J

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showActionBar()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showNavigationBar()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewStateHelper;->isActionBarShowing(Lcom/sec/samsung/gallery/view/ActionBarManager;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->hideActionBar()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_d
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->SUPPORT_KNOX_DESKTOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33500()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCrossPicker:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForZoomButton(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFlagForExpandMode:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$33700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForNavigatingButton(Z)V

    goto/16 :goto_3

    :cond_e
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mUseFilmStripWithFastOptionView:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimeLaunch:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBottomArea(ZZ)V
    invoke-static {v2, v3, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showCommentsView()V

    goto/16 :goto_4

    :cond_f
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_10
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFirstTimeLaunch:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-nez v5, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->showFastOptionView(Z)V

    :cond_12
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showCommentsView()V

    :cond_13
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsEnvironmentTagged:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setShowBarState(Z)V

    goto/16 :goto_4

    :cond_14
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastOptionView(Z)V

    :cond_15
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->hideCommentsView()V

    :cond_16
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/BackgroundView;->setVisibility(I)V

    :cond_17
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->show()V

    :cond_18
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsEnvironmentTagged:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setShowBarState(Z)V

    goto/16 :goto_4
.end method
