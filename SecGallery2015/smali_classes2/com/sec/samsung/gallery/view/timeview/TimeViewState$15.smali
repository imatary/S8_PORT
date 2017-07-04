.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p4, p5, :cond_0

    const-string/jumbo v1, "TimeViewState"

    const-string/jumbo v2, "onPostSwitchState, stop smart clustering = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setStopSmartClustering(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v0, p4, p5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->destroyCurrentViewInUIThread(II)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onPreSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "TimeViewState"

    const-string/jumbo v4, "onPreSwitchState, stop smart clustering = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setStopSmartClustering(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v3

    invoke-interface {v3, p4, p5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->getNextStateInfo(II)Lcom/sec/samsung/gallery/drawer/StateInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v1, p5, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->slideToNextViewState(ILcom/sec/samsung/gallery/drawer/StateInfo;)Z

    :cond_2
    move v1, v2

    goto :goto_0
.end method
