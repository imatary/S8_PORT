.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->val$commandType:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->val$editChildView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p2, :sswitch_data_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->val$commandType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->val$editChildView:Landroid/widget/TextView;

    invoke-static {v0, v1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->delayHideBarsTime()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method
