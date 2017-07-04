.class Lcom/sec/samsung/gallery/view/allview/AllViewState$6;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->startDetailViewInUIThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

.field final synthetic val$albumIndex:I

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->val$albumIndex:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->val$albumIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->val$itemIndex:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2700(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
