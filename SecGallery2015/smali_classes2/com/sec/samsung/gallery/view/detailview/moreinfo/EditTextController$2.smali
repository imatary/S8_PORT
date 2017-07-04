.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0250

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/EditTextController;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-object v0

    :cond_2
    const/16 v1, 0x32

    goto :goto_0
.end method
