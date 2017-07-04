.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initializeCreateEventButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3702(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V

    goto :goto_0
.end method
