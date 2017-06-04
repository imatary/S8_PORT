.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateOptionMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6402(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Z)Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->enableResStroke(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;->updateOptionMenu()V

    goto :goto_0
.end method
