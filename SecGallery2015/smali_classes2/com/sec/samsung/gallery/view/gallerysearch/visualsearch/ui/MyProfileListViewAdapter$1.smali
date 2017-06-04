.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;
.super Ljava/lang/Object;
.source "MyProfileListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->mMyProfileListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->mMyProfileListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;

    iget-wide v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mRawId:J

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;

    iget-wide v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mPersonId:J

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mNeedToUpdatePhoto:Z

    invoke-interface/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;->onListClicked(Ljava/lang/String;JJZ)V

    :cond_0
    return-void
.end method
