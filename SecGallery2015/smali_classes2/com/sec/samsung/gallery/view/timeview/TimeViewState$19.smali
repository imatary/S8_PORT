.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12502(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$13000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$13102(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$12302(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    return-void
.end method
