.class Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$4;
.super Ljava/lang/Object;
.source "DetailCommentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsViewListener:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;->onItemSelected(I)Z

    return-void
.end method
