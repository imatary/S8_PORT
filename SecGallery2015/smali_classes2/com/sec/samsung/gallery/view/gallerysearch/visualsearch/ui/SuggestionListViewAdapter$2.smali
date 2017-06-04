.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;
.super Ljava/lang/Object;
.source "SuggestionListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4708"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->getSubCategoryName()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget v3, v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionItemId:I

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->savePreference(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionSubCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$2;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget v3, v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mLocationType:I

    const/4 v4, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
