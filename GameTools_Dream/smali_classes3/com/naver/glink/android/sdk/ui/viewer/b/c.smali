.class Lcom/naver/glink/android/sdk/ui/viewer/b/c;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

.field public b:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_encoding_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->d:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_thumb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_thumb_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->f:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->video_data_alert_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->g:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->h:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->i:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setFullButtonVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p2}, Lcom/naver/glink/android/sdk/api/requests/Requests;->playUrlRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->g:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/naver/glink/android/sdk/api/requests/VideoPlayLogRequests;->sendPlayLogRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->j()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setShouldAutoplay(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setControlsToggleEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$3;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$4;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnFullScreenListener(Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    invoke-virtual {v0, v1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$7;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$7;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->h:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$8;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$8;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->i:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c$9;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$9;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$10;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->j:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->j:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->j:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->i()V

    :cond_0
    return-void
.end method

.method public c()Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->j:Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    return-object v0
.end method
