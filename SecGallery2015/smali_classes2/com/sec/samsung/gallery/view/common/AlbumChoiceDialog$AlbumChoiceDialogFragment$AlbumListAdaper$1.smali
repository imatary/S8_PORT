.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;
.super Ljava/lang/Object;
.source "AlbumChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

.field final synthetic val$btn:Landroid/widget/RadioButton;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;ILandroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->this$2:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->val$position:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->val$btn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->this$2:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->val$position:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->this$2:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->val$position:I

    # setter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$602(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->val$btn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;->this$2:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->detailsListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$900(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
