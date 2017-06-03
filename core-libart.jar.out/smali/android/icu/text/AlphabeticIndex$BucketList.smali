.class Landroid/icu/text/AlphabeticIndex$BucketList;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Bucket",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final bucketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final immutableVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->fullIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set1(Landroid/icu/text/AlphabeticIndex$Bucket;I)I

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private fullIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private getBucketCount()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v2, :cond_1

    add-int v5, v4, v2

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get1(Landroid/icu/text/AlphabeticIndex$Bucket;)I

    move-result v5

    return v5
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
