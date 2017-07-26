.class Lcom/naver/glink/android/sdk/ui/media/a$a;
.super Ljava/lang/Object;
.source "AllMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/TextView;

.field final g:Landroid/view/View;

.field final synthetic h:Lcom/naver/glink/android/sdk/ui/media/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/a;Landroid/view/View;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->h:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->placeholder_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->a:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->movie_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->c:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->gif_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->d:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->subject:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->f:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->selected_overlay:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->g:Landroid/view/View;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/configure/d;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_cafe_icon:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/media/a;->c(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/ui/media/b;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/media/b;->a:Lcom/naver/glink/android/sdk/model/Menu$Type;

    sget-object v4, Lcom/naver/glink/android/sdk/model/Menu$Type;->VIDEOS:Lcom/naver/glink/android/sdk/model/Menu$Type;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/media/a;->c(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/ui/media/b;

    move-result-object v3

    iget-object v3, v3, Lcom/naver/glink/android/sdk/ui/media/b;->a:Lcom/naver/glink/android/sdk/model/Menu$Type;

    sget-object v4, Lcom/naver/glink/android/sdk/model/Menu$Type;->VIDEOS:Lcom/naver/glink/android/sdk/model/Menu$Type;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_defaultimg:I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getErrorMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    const-string/jumbo v3, "#a3a9a9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->c:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->d:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->g:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/a/v;->a(ILjava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->h:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/media/a;->d(Lcom/naver/glink/android/sdk/ui/media/a;)I

    move-result v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->h:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/media/a;->a(Lcom/naver/glink/android/sdk/ui/media/a;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v3, Lcom/naver/glink/android/sdk/ui/media/a$a$1;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/media/a$a$1;-><init>(Lcom/naver/glink/android/sdk/ui/media/a$a;)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/media/a$a$2;

    invoke-direct {v3, p0, p2}, Lcom/naver/glink/android/sdk/ui/media/a$a$2;-><init>(Lcom/naver/glink/android/sdk/ui/media/a$a;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->d:Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->gif:Z

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getFormattedWriteDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->h:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/media/a;->e(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->g:Landroid/view/View;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "#363838"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "#a3a9a9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_4
.end method
