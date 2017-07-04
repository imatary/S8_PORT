.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;
.super Landroid/os/AsyncTask;
.source "MoreInfoItemTextCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCategoryType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfo:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->getCategoryType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->access$301(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->notifyDirty()V

    return-void
.end method
