.class Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;
.super Ljava/lang/Object;
.source "SelectionItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    :pswitch_1
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->show(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->dismiss(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
