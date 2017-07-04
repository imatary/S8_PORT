.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;
.super Ljava/lang/Object;
.source "AddTagsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
