.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;
.super Ljava/lang/Object;
.source "MoreInfoCategoryPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->initDialog()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V

    :cond_0
    return-void
.end method
