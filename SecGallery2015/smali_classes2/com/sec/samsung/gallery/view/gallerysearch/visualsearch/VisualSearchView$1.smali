.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;
.super Landroid/os/Handler;
.source "VisualSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->init(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/database/ContentObserver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_CLUSTER:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
