.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemAlbumIdx:I
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemIdx:I
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5002(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->onItemClick(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    const-string/jumbo v1, "PicturesSelectSingleItem"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "TSMD"

    const-string/jumbo v2, "Taphold tap"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbum(I)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$5600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "001"

    const-string/jumbo v1, "1007"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V

    goto :goto_0
.end method
