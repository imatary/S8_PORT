.class public Lcom/naver/glink/android/sdk/ui/article/a/a;
.super Ljava/lang/Object;
.source "CommentViewHolder.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->a:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->b:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->staff_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->c:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->writer_nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->d:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->write_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->e:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->contents:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->f:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->more_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->g:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->reply:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->h:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->more_replies:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->i:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->more_replies_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->j:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->k:Landroid/view/View;

    return-void
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 5

    sget v0, Lcom/naver/glink/android/sdk/R$string;->replies_more_view:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "#3b7adb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v1
.end method

.method private a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)Ljava/lang/CharSequence;
    .locals 6

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->deleted_comment:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v4, v3, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v3, Lcom/naver/glink/android/sdk/R$color;->black2:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v3, 0x21

    invoke-virtual {v1, v5, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isReply()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->userProfileImage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v3, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_profile:I

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/BitmapTypeRequest;->error(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a/a$1;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->b:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4, p1}, Lcom/naver/glink/android/sdk/ui/article/a/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Landroid/widget/ImageView;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a/a$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/naver/glink/android/sdk/ui/article/a/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->d:Landroid/widget/TextView;

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->d:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->d:Landroid/widget/TextView;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a/a$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/naver/glink/android/sdk/ui/article/a/a$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getFormattedDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/naver/glink/android/sdk/R$color;->gray4:I

    :goto_3
    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isReply()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->g:Landroid/view/View;

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mine:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    move v3, v2

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->g:Landroid/view/View;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/article/a/a$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->h:Landroid/view/View;

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    move v3, v2

    :goto_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->h:Landroid/view/View;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/article/a/a$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a$5;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_7

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a/a$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a$6;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    iget v0, p2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyCount:I

    add-int/lit8 v3, v0, -0x3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->i:Landroid/view/View;

    if-eqz p4, :cond_8

    if-lez v3, :cond_8

    move v0, v2

    :goto_8
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/naver/glink/android/sdk/ui/article/a/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->i:Landroid/view/View;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/article/a/a$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/a/a$7;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->k:Landroid/view/View;

    invoke-direct {p0, p3, p4}, Lcom/naver/glink/android/sdk/ui/article/a/a;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getCafeMemberLevel()I

    move-result v3

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->setStaffIconResource(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    sget v0, Lcom/naver/glink/android/sdk/R$color;->gray7:I

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_8
    move v0, v1

    goto :goto_8

    :cond_9
    move v2, v1

    goto :goto_9
.end method
