.class public Lcom/naver/glink/android/sdk/ui/articles/a/a;
.super Ljava/lang/Object;
.source "ArticleViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->a:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->b:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->write_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->c:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->like_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->d:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->e:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->thumbnail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->f:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->g:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->movie_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->h:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->gif_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->i:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;Ljava/lang/String;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->a:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/naver/glink/android/sdk/model/Article;->subject:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->b:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/naver/glink/android/sdk/model/Article;->writerNickname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/model/Article;->getFormattedWriteDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->e:Landroid/widget/TextView;

    iget v3, p2, Lcom/naver/glink/android/sdk/model/Article;->commentCount:I

    invoke-static {p1, v3}, Lcom/naver/glink/android/sdk/a/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->d:Landroid/widget/TextView;

    iget v3, p2, Lcom/naver/glink/android/sdk/model/Article;->likeCount:I

    invoke-static {p1, v3}, Lcom/naver/glink/android/sdk/a/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/model/Article;->likeIt:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_listlike_pressed:I

    :goto_1
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p2, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->h:Landroid/widget/ImageView;

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/model/Article;->movie:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->i:Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/model/Article;->gif:Z

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/naver/glink/android/sdk/model/Article;->subject:Ljava/lang/String;

    const-string/jumbo v3, "<b>"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "</b>"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-static {v0, p3, v3}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_listlike:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p2, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/a/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
