.class Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow(Z)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onMultiWindowModeChanged(Z)V

    return-void

    :cond_1
    const/16 v0, 0x200

    goto :goto_0
.end method
