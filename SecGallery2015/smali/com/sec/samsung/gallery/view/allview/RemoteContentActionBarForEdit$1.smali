.class Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;
.super Ljava/lang/Object;
.source "RemoteContentActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;ILjava/lang/String;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
