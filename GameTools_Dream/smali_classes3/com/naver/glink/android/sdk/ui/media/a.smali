.class Lcom/naver/glink/android/sdk/ui/media/a;
.super Landroid/widget/BaseAdapter;
.source "AllMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/media/a$c;,
        Lcom/naver/glink/android/sdk/ui/media/a$b;,
        Lcom/naver/glink/android/sdk/ui/media/a$a;,
        Lcom/naver/glink/android/sdk/ui/media/a$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:I

.field private final d:Lcom/naver/glink/android/sdk/ui/media/b;

.field private e:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/media/b;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->b:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/media/a;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/ui/media/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->f:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/ui/media/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->g:I

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->h:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->c()I

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/media/a;->g:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/media/a;->h:I

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->i:I

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/ui/media/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->i:I

    mul-int/lit8 v0, v0, 0x57

    div-int/lit16 v0, v0, 0x9d

    :goto_2
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->j:I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->i:I

    mul-int/lit8 v0, v0, 0x72

    div-int/lit16 v0, v0, 0x9d

    goto :goto_2
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->j:I

    return v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/media/a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->h:I

    return v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/ui/media/b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/media/a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->i:I

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->e:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    return-object v0
.end method


# virtual methods
.method a()Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->e:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    return-object v0
.end method

.method a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a;->e:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/a;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/b;->b()I

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/media/a;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/media/b;->b()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v3, v0}, Lcom/naver/glink/android/sdk/ui/media/b;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_all_media_row:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a;->g:I

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/media/a;->g:I

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/media/a;->f:I

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/media/a$d;

    if-nez v0, :cond_0

    new-instance v2, Lcom/naver/glink/android/sdk/ui/media/a$d;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a;->b:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/media/a;->c:I

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/naver/glink/android/sdk/ui/media/a$d;-><init>(Lcom/naver/glink/android/sdk/ui/media/a;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/naver/glink/android/sdk/ui/media/a$d;->a(Landroid/content/Context;Ljava/util/List;)V

    return-object v1

    :cond_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
