.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;
.super Ljava/lang/Object;
.source "SearchActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->removeKeyword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
