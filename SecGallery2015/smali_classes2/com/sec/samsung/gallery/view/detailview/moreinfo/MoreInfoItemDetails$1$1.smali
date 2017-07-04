.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;
.super Ljava/lang/Object;
.source "MoreInfoItemDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isInputMethodShown(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    :cond_0
    return-void
.end method
