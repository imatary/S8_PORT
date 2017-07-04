.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;
.super Landroid/os/AsyncTask;
.source "AddTagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->queryAllTag(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "AddTagsAdapter"

    const-string/jumbo v1, "Tags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V

    goto :goto_0
.end method
