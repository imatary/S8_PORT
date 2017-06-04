.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isInitialActivityLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItemView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsDualLaunchFromDetail:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V

    :cond_1
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3102(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsDualLaunchFromDetail:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4502(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getUpdateRequiredForRemoveTag()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isReCreateActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a031f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
