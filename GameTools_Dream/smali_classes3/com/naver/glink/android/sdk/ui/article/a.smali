.class public Lcom/naver/glink/android/sdk/ui/article/a;
.super Landroid/widget/BaseAdapter;
.source "ArticleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field private static final b:Ljava/lang/String; = "ArticleAdapter"

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x5

.field private static final i:I = 0x6

.field private static final j:I = 0x7

.field private static final k:I = 0x8

.field private static final l:I = 0x9


# instance fields
.field private final m:Landroid/content/Context;

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private final p:Z

.field private q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/article/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->u:I

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->n:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    return-object v0
.end method

.method private b(I)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    if-ne v0, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    return-object v0
.end method

.method private b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/article/a$a;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->getReversedComments()Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v3, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getReplies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v4, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    return v0
.end method

.method private c(I)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->d(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget v2, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    goto :goto_0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    return-object v0
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->d()I

    move-result v2

    if-gtz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;->prevPage:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private d()I
    .locals 3

    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->exposeCount:I

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->t:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget v2, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    if-ne p1, v0, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private e(I)Lcom/naver/glink/android/sdk/ui/article/a$a;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    goto :goto_1
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->exposeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(I)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;
    .locals 2

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    goto :goto_0
.end method

.method a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget v3, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/ViewGroup;II)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt p2, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/naver/glink/android/sdk/ui/article/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iput-object v5, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->t:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v1, v2, v5}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Content;

    instance-of v2, v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "ArticleAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 content \uc785\ub2c8\ub2e4.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v5}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 3

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->t:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v1, p1}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->w:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->t:I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->t:I

    invoke-direct {p0, v3}, Lcom/naver/glink/android/sdk/ui/article/a;->b(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/naver/glink/android/sdk/ui/article/a;->b(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;)V
    .locals 1

    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->b:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->u:I

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->c:Z

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->v:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;)V
    .locals 5

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->c:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->d(I)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a$a;

    iget-object v3, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-direct {v0, v3}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v4, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 4

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v1, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-direct {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/a;->d(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isComment()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyCount:I

    if-gtz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v3, v0}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 3

    iget v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/a$a;

    invoke-direct {v2, p1}, Lcom/naver/glink/android/sdk/ui/article/a$a;-><init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->e(I)Lcom/naver/glink/android/sdk/ui/article/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->e(I)Lcom/naver/glink/android/sdk/ui/article/a$a;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/16 v3, 0x8

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 view type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_header:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/c;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/article/a/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/a/c;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    :cond_2
    :goto_0
    return-object p2

    :pswitch_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_text:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_image:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/d;

    if-nez v0, :cond_10

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/article/a/d;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_video:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/ui/article/a/e;

    if-nez v1, :cond_6

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/e;

    invoke-direct {v1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/e;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/ui/article/a/e;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    goto/16 :goto_0

    :pswitch_4
    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_contents_footer:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/b;

    if-nez v0, :cond_8

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/b;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/article/a/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->q:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a;->s:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget-boolean v4, p0, Lcom/naver/glink/android/sdk/ui/article/a;->v:Z

    iget v5, p0, Lcom/naver/glink/android/sdk/ui/article/a;->u:I

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/a/b;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;ZI)V

    goto/16 :goto_0

    :pswitch_5
    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_comments_header:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_9
    sget v0, Lcom/naver/glink/android/sdk/R$id;->comments_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v1, :cond_a

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comments_more:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v1, Lcom/naver/glink/android/sdk/R$string;->comments_more_view:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/naver/glink/android/sdk/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comments_header_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    move v2, v3

    goto :goto_4

    :pswitch_6
    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/naver/glink/android/sdk/R$layout;->item_article_comment:I

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->etc_items:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    if-ne v1, v0, :cond_e

    sget v0, Lcom/naver/glink/android/sdk/R$color;->white1:I

    :goto_5
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x7

    if-ne v1, v0, :cond_d

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_profile_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_profile_image_stroke:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->o:Z

    if-eqz v0, :cond_d

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v0, v1, v2, v5, v5}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/a;

    if-nez v0, :cond_f

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/a;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_6
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v2, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/article/a;->c(I)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    move-result-object v2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/a;->b()Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/naver/glink/android/sdk/ui/article/a;->p:Z

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/naver/glink/android/sdk/ui/article/a/a;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V

    goto/16 :goto_0

    :cond_e
    sget v0, Lcom/naver/glink/android/sdk/R$color;->white2:I

    goto :goto_5

    :pswitch_7
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_article_empty_comments:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_8
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_empty_space:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    goto :goto_6

    :cond_10
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
