.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4102(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4302(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3602(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)I

    return-void
.end method
