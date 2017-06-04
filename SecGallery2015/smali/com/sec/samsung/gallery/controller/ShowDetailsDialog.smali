.class public Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;
.super Ljava/lang/Object;
.source "ShowDetailsDialog.java"


# static fields
.field private static sDetailsDialog:Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;


# instance fields
.field private mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->dismissDialog()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    sput-object v1, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->sDetailsDialog:Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    :cond_0
    return-void
.end method

.method private getContentsForDetailsDialog(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/interfaces/LibraryContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getSelectionManager()Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x6b

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x6a

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x65

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x69

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x6c

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x66

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x67

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    const/16 v4, 0x68

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->removeDetail(I)V

    new-instance v4, Lcom/sec/samsung/gallery/controller/DetailModel;

    invoke-direct {v4, p1, v1}, Lcom/sec/samsung/gallery/controller/DetailModel;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaDetails;)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/DetailModel;->toStringList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->sDetailsDialog:Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->sDetailsDialog:Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->sDetailsDialog:Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;

    return-object v0
.end method

.method private showDialog(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    instance-of v0, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v0, p1, p2}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->showDialog()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {v0, p1, p2}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->mDetailsDaialog:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->getContentsForDetailsDialog(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->showDialog(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowDetailsDialog;->dismissDialog()V

    goto :goto_0
.end method
