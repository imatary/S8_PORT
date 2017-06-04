.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;
.super Ljava/lang/Object;
.source "MoreInfoItemDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;->this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;->this$2:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
