.class Lcom/naver/glink/android/sdk/ui/main/a;
.super Ljava/lang/Object;
.source "ExtraViewHolder.java"


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->d:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->collapse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->e:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->top_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->f:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->channel_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->g:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->channel_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->copyright:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->h:Landroid/widget/ImageView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->glink:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->i:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->black_overlay_for_video_viewer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->c:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/naver/glink/android/sdk/R$string;->version:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v3

    iget-object v3, v3, Lcom/naver/glink/android/sdk/configure/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->h:Landroid/widget/ImageView;

    const/16 v1, 0x66

    const/16 v2, 0xe

    invoke-virtual {p2, v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/a$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/main/a$4;-><init>(Lcom/naver/glink/android/sdk/ui/main/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string/jumbo v1, "http://cafeimgs.naver.net/plug/default_image/with_naver_cafe.png"

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->i:Landroid/view/View;

    iget v1, p2, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iget v2, p2, Lcom/naver/glink/android/sdk/configure/c;->c:I

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->d:Landroid/view/View;

    invoke-virtual {p2, v0, v4, v4}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->d:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/a$1;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/main/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/main/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->e:Landroid/view/View;

    invoke-virtual {p2, v0, v4, v4}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->e:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/a$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/main/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/main/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p2, Lcom/naver/glink/android/sdk/configure/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->f:Landroid/view/View;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {p2, v2}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/a$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/main/a$3;-><init>(Lcom/naver/glink/android/sdk/ui/main/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/main/a;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
