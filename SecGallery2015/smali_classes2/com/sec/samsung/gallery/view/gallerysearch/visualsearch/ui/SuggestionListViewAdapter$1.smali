.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionListViewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)I
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    check-cast p2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$1;->compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)I

    move-result v0

    return v0
.end method
