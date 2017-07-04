.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;
.super Ljava/lang/Object;
.source "SearchActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const-string/jumbo v3, "4702"

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->SALogging(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/EditText;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const-string/jumbo v3, "4701"

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->SALogging(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;->showRecommendList(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const-string/jumbo v2, "SearchViewResult"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v2, v4, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->resetSearchData()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const-string/jumbo v3, "4713"

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->SALogging(Ljava/lang/String;)V

    goto :goto_0
.end method
