.class public Lcom/naver/glink/android/sdk/ui/viewer/a/b;
.super Ljava/lang/Object;
.source "FixedItemsDataSource.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/a/c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V
    .locals 0

    return-void
.end method
