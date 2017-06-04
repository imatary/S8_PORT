.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;
.super Ljava/lang/Object;
.source "MoreInfoItemDetails.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "304"

    const-string/jumbo v1, "4527"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
