.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->childViewSetListener(ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

.field final synthetic val$commandType:I

.field final synthetic val$editChildView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->val$commandType:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->val$editChildView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2000()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->val$commandType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->val$editChildView:Landroid/widget/TextView;

    invoke-static {v0, v1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1700(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->enableFastOptionTimeout(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1702(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    :cond_2
    return v2
.end method
