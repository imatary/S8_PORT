.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$1;
.super Ljava/lang/Object;
.source "MoreInfoCategoryPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f1201c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->addTag(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
