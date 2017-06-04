.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;
.super Landroid/content/BroadcastReceiver;
.source "VisualSearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->registerSIPBroadcastReceiver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const-string/jumbo v3, "AxT9IME.isMovableKeypad"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsMovableKeypad:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18402(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isInputMethodShown(Landroid/content/Context;)Z

    move-result v3

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsInputMethodShown:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18602(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z

    return-void
.end method
