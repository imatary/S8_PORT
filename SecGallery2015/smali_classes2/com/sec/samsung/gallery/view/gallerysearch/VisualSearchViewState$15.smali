.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6402(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I

    :cond_0
    return-void
.end method
