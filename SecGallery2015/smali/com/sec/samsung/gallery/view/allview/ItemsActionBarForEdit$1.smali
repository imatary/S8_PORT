.class Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;
.super Ljava/lang/Object;
.source "ItemsActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;ILjava/lang/String;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
