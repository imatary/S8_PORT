.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$5;
.super Ljava/lang/Object;
.source "SearchActionBar.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showRecommendList(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SEARCH_RECOMMEND_LIST:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
