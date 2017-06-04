.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createEditItem(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

.field final synthetic val$commandType:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;->val$commandType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$12;->val$commandType:I

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->onItemSelected(I)Z

    :cond_0
    return-void
.end method
