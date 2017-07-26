.class public Lcom/naver/glink/android/sdk/ui/viewer/b/b;
.super Ljava/lang/Object;
.source "PhotoViewHolder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Luk/co/senab/photoview/PhotoView;

.field private d:F

.field private final e:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private h:Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->full_image_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->e:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->f:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->g:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->full_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Luk/co/senab/photoview/PhotoView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/b$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setOnViewTapListener(Luk/co/senab/photoview/d$f;)V

    instance-of v0, p1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->h:Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setOnScaleChangeListener(Luk/co/senab/photoview/d$e;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;F)F
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->d:F

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->h:Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 2

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getErrorMessage(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getViewerImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v1, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->f:Landroid/view/View;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->g:Landroid/view/View;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Luk/co/senab/photoview/PhotoView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->e:Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V
    .locals 2

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->g:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$3;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->d()V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->d:F

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->d:F

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setScale(F)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->d()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setOnScaleChangeListener(Luk/co/senab/photoview/d$e;)V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->h:Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
