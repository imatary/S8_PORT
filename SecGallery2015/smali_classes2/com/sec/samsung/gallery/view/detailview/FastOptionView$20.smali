.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateLayout()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2802(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2402(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastEditContainerViewShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3002(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/LinearLayout;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$3500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->onItemSelected(I)Z

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$20;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    goto :goto_0
.end method
