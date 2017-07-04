.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;
.super Landroid/os/AsyncTask;
.source "MoreInfoItemTagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;
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
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->queryTag(Landroid/content/Context;I)Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->onPostExecute(Ljava/util/ArrayList;)V

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

    const-string/jumbo v0, "MoreInfoItemTagsAdapter"

    const-string/jumbo v1, "Tags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)V

    goto :goto_0
.end method
