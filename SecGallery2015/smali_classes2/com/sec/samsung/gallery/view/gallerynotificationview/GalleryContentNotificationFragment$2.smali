.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "GalleryContentNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getAllCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->hideNoItemText()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->reload(Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->showNoItemText()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->removeAll()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
