.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "SearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field private final mIsLimited:Z

.field private final mMaxCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->mMaxCount:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->mIsLimited:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 4

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->mMaxCount:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->mIsLimited:Z

    invoke-static {v1, v0, v2, v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    const/4 v1, 0x0

    return-object v1
.end method
