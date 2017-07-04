.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->finishDetailView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$30300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->finishState()V

    return-void
.end method

.method private finishState()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setBufferAnimation(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f050030

    goto :goto_0

    :cond_3
    const v1, 0x7f05002f

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMMS()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v3, 0x7f050031

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isActivityTransitionVI()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v3, 0x7f050039

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewStateHelper;->isActionBarShowing(Lcom/sec/samsung/gallery/view/ActionBarManager;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v4

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlurWithCameraService:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getQuickViewService()Lcom/sec/android/gallery3d/service/IQuickViewService;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getQuickViewService()Lcom/sec/android/gallery3d/service/IQuickViewService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/android/gallery3d/service/IQuickViewService;->showBlurImageWithAnimation(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$30200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    const/16 v0, 0x64

    :cond_4
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;)V

    int-to-long v6, v0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_5
    const/16 v0, 0x32

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DetailViewState"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$37;->finishState()V

    goto :goto_1
.end method
