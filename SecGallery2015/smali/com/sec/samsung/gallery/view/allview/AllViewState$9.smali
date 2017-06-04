.class Lcom/sec/samsung/gallery/view/allview/AllViewState$9;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->startPreviousViewState([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

.field final synthetic val$deviceInfo:[Ljava/lang/String;

.field final synthetic val$prevViewState:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->val$prevViewState:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->val$deviceInfo:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->val$prevViewState:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->val$deviceInfo:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;->val$deviceInfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->showDeviceRemovedDialog(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
