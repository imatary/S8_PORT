.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastEditContainerViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1200f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
