.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setContentType(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isUpdateLayout:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2402(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initFastMenuView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$15;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFirstLaunch:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2502(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    goto :goto_0
.end method
