.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;
.super Ljava/lang/Object;
.source "NoItemViewState.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x13

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->clearFocus()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method
