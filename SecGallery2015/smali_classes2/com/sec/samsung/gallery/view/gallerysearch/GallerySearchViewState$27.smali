.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;
.super Landroid/content/BroadcastReceiver;
.source "GallerySearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->registerSIPBroadcastReceiver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const-string/jumbo v5, "AxT9IME.isMovableKeypad"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsMovableKeypad:Z
    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18802(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isInputMethodShown(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsInputMethodShown:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19102(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setFocusToSearchView(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V
    invoke-static {v5, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsInputMethodShown:Z
    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$19402(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method
