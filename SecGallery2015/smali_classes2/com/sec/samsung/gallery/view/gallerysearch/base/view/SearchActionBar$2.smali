.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;
.super Ljava/lang/Object;
.source "SearchActionBar.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->initializeSearchView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_CHANGED:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1102(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_SUBMITTED:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    const-string/jumbo v0, "309"

    const-string/jumbo v1, "4709"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
