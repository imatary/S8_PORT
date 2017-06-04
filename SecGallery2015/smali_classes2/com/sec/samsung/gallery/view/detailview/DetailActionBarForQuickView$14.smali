.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;
.super Ljava/lang/Object;
.source "DetailActionBarForQuickView.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsCheckedForQRState:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1800(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1802(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;)V

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1902(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.qragent"

    const-string/jumbo v2, "com.samsung.android.app.qragent.service.QRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$2200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
