.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;
.super Ljava/lang/Object;
.source "SuggestedNameListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    iget-wide v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mRawId:J

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mNeedToUpdatePhoto:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;->onListClicked(Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method
