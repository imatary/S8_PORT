.class Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;
.super Landroid/os/AsyncTask;
.source "VisualSearchDeleteNameCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteNameTask"
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
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mPersonId:Ljava/lang/String;

    return-void
.end method

.method private updateSearchTagFilter()V
    .locals 8

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getLocationType()I

    move-result v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "_id = ? "

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mPersonId:Ljava/lang/String;

    aput-object v3, v1, v5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "contact_raw_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->updateSearchTagFilter()V

    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "REFRESH_VISUAL_SEARCH_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method
