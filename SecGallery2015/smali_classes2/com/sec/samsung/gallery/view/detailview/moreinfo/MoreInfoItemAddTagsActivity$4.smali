.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;
.super Ljava/lang/Object;
.source "MoreInfoItemAddTagsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateMyTagsVisibility(Z)V
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateSaveButton(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateMyTagsVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateSaveButton(Z)V
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V

    goto :goto_0
.end method
