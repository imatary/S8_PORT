.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

.field final synthetic val$albumIndex:I

.field final synthetic val$changeScreen:Z

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$albumIndex:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$itemIndex:I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$albumIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$itemIndex:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->val$changeScreen:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$6200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
