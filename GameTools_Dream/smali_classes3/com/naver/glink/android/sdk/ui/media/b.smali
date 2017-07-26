.class public Lcom/naver/glink/android/sdk/ui/media/b;
.super Ljava/lang/Object;
.source "AllMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/media/b$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x14

.field private static final c:I = 0xa


# instance fields
.field final a:Lcom/naver/glink/android/sdk/model/Menu$Type;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/media/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu$Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/media/b;->a:Lcom/naver/glink/android/sdk/model/Menu$Type;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x14

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;->lastArticleId:I

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;->lastAttachId:I

    :cond_0
    sget-object v2, Lcom/naver/glink/android/sdk/ui/media/b$3;->a:[I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/b;->a:Lcom/naver/glink/android/sdk/model/Menu$Type;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/model/Menu$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 \uba54\ub274 \ud0c0\uc785\uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-static {v4, v1, v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->videosRequest(III)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    invoke-static {v4, v1, v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->photosRequest(III)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/b;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/b;Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;)Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/b;ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/media/b;->a(ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V

    return-void
.end method

.method private a(ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/media/b$a;

    invoke-interface {v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/media/b$a;->a(ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->metadata:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->metadata:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;->isLast:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->metadata:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->d:Landroid/content/Context;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/media/b$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/media/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/media/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/b;->b()I

    move-result v0

    add-int/lit8 v1, p1, 0xa

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/media/b;->e()V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    return-object v0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/media/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->a:Lcom/naver/glink/android/sdk/model/Menu$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/model/Menu$Type;->VIDEOS:Lcom/naver/glink/android/sdk/model/Menu$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/naver/glink/android/sdk/ui/media/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_0
    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->h:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b;->g:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/b;->d:Landroid/content/Context;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/media/b$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/media/b$1;-><init>(Lcom/naver/glink/android/sdk/ui/media/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method
