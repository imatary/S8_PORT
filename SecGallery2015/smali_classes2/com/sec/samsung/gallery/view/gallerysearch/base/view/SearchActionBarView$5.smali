.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;
.super Ljava/lang/Object;
.source "SearchActionBarView.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mBlockTextChange:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
