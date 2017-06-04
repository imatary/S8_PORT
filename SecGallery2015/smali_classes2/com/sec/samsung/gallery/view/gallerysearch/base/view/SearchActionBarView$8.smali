.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;
.super Ljava/lang/Object;
.source "SearchActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;ZLcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$visible:Z

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$inputMethodManager:Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isAccessoryKeyboardState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mShowImeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mShowImeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
