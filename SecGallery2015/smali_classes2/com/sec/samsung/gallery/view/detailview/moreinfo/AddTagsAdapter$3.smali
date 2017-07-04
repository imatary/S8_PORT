.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;
.super Landroid/widget/Filter;
.source "AddTagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V

    :cond_0
    return-void
.end method
