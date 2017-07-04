.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$3;
.super Ljava/lang/Object;
.source "AppChoiceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-static {v0, p3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$1400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;I)V

    return-void
.end method
