.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;
.super Ljava/lang/Object;
.source "PhotoSplitViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2202(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1702(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;I)I

    return-void
.end method
