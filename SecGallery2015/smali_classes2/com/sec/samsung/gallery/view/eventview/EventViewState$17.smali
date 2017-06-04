.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startMapView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
