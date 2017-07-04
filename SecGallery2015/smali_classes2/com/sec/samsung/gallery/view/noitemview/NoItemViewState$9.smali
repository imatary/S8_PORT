.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method
