.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;
.super Ljava/lang/Object;
.source "FilterSelectedItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    :pswitch_1
    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->show(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    sget v6, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_MORE:I

    invoke-static {v4, p1, v5, v6}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "FlterSelctItmLstAdpter"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->dismiss(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
