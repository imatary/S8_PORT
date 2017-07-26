.class public Lcom/naver/glink/android/sdk/ui/article/a/e;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->a:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_log:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_gradient:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->c:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$dimen;->article_media_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/configure/c;->c()I

    move-result v1

    sub-int v0, v1, v0

    int-to-double v0, v0

    const-wide v2, 0x3fe1eb851eb851ecL    # 0.56

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/a/e;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a/e;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->a:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->c:Landroid/view/View;

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/e$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/a/e$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/e;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/e;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/e$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/ui/article/a/e$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/e;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
