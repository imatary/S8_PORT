.class Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;
.super Ljava/lang/Object;
.source "SortByTypeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->showDialog(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mScreenId:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->access$000(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1106"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->val$layout:Landroid/view/View;

    const v3, 0x7f120256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->val$layout:Landroid/view/View;

    const v3, 0x7f120259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mListener:Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->access$100(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mListener:Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->access$100(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;->onSortByTypeChanaged(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_MODIFIEDTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f120257
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f12025b
        :pswitch_2
    .end packed-switch
.end method
