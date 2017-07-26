.class public Lcom/naver/glink/android/sdk/ui/article/a/d;
.super Ljava/lang/Object;
.source "ImageViewHolder.java"


# static fields
.field private static final a:I = 0x168

.field private static final b:I = 0x21c


# instance fields
.field private c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->gif_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->gif_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->gif_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->g:Landroid/widget/ProgressBar;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;)Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21c

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$dimen;->article_media_item_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/configure/c;->c()I

    move-result v2

    sub-int v1, v2, v1

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c()I

    move-result v2

    if-le v2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/configure/c;->a(II)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x168

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c()I

    move-result v2

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/naver/glink/android/sdk/ui/article/a/d;

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/a/d;

    if-eq p0, v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/GifTypeRequest;->dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/GifRequestBuilder;->dontTransform()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/GifRequestBuilder;->override(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/d$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/a/d$5;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/d;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->c:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
    .locals 8

    const/16 v7, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->c:Z

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;)Landroid/support/v4/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/a/d$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/bumptech/glide/BitmapTypeRequest;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/d$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/a/d$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/d;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/d$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/ui/article/a/d$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/d$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/ui/article/a/d$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method
