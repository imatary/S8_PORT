.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$27;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->hideBars(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$27;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$27;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$27;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    return-void
.end method
