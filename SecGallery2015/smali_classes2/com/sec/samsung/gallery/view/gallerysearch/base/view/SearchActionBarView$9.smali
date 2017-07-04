.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;
.super Ljava/lang/Object;
.source "SearchActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->minimizeSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

.field final synthetic val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->minimizeSoftInput(Landroid/content/Context;Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
