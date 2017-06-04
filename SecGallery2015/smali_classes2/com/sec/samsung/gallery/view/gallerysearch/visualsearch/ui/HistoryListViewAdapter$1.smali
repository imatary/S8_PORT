.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;
.super Ljava/lang/Object;
.source "HistoryListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4710"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
