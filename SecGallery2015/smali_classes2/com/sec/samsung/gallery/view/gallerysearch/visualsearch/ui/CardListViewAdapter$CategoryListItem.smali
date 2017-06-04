.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;
.source "CardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryListItem"
.end annotation


# instance fields
.field private mCategoryItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryName:Ljava/lang/String;

.field private mCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCategoryItem:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCategoryName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCount:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCategoryItem:Ljava/util/List;

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCategoryItem:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->mCount:I

    return v0
.end method
