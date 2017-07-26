.class public Lcom/naver/glink/android/sdk/ui/article/a/b;
.super Ljava/lang/Object;
.source "FooterViewHolder.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->a:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->staff_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->b:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->c:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->d:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->write_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->e:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->read_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->f:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->like_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->g:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comments_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->h:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;ZI)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->writerProfileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_profile:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/b$1;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/naver/glink/android/sdk/ui/article/a/b$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/b;Landroid/widget/ImageView;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/b;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->b:Landroid/widget/ImageView;

    iget v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->writerMemberLevel:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->setStaffIconResource(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->writerNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/b$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/b;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->writerMemberTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->getFormattedWriteDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->readCount:I

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/a/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/naver/glink/android/sdk/a/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_3

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_detail_like_pressed:I

    :goto_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/b$4;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a/b$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/b;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->comment:I

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/a/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_detail_like:I

    goto :goto_1
.end method
