.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;
.super Ljava/lang/Object;
.source "MoreInfoItemAddTagsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setBtnClickListener()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->closeSoftInputFromWindow()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->finish()V

    return-void
.end method
