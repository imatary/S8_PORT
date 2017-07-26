.class public Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "ProfileMainFragmentView.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.naver.glink.ARG_SHORTCUT"

.field private static final b:Ljava/lang/String; = "com.naver.glink.OTHERPROFILE"

.field private static final c:Ljava/lang/String; = "com.naver.glink.OTHERPROFILE_ID"

.field private static final d:Ljava/lang/String; = "com.naver.glink.ISWRITER"

.field private static final g:Ljava/lang/String; = "-1"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

.field private p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

.field private q:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "-1"

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/content/Context;ZZLjava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_SHORTCUT"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.OTHERPROFILE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.OTHERPROFILE_ID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ISWRITER"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->isAttachedToWindow()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->setCafeJoinListener(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    return-object v0
.end method

.method private b(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->d(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    return-void
.end method

.method private c(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_personal_profile_none:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$6;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->r:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->s:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->memberLevelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->u:Landroid/widget/TextView;

    const-string/jumbo v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->visitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%,d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v4, v4, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->write:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%,d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v4, v4, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->comment:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->A:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->like:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->w:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    return-object v0
.end method

.method static synthetic j(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic k(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->setOnCafeInfoListener(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l()V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    const-string/jumbo v1, "W"

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/requests/Requests;->otherMemberRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->otherMemberRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->memberRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->memberRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    const-string/jumbo v1, "nickName"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$8;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-static {v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;)Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    move-result-object v1

    const-string/jumbo v2, "nickName"

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    goto :goto_0
.end method

.method private setViewScale(Landroid/view/View;)V
    .locals 10

    const/16 v9, 0x46

    const/16 v8, 0x10

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_image_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->profile_image_stroke:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$id;->icon_post_profile:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$id;->icon_comment_profile:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$id;->icon_like_profile:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$id;->copyright:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v6

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->r:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v9, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v6

    invoke-virtual {v6, v0, v9, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v8}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0, v3, v8, v8}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0, v4, v8, v8}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0xe

    invoke-virtual {v0, v5, v1, v2}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_profile_main:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->h:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.OTHERPROFILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.OTHERPROFILE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ISWRITER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->k:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_info_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_articles_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v4, v3, [I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v5

    iget v5, v5, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v5, v4, v1

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$1;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$9;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_nickname_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_mem_name_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$10;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->s:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_grade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->t:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_visit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->u:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->r:Landroid/widget/ImageView;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/naver/glink/android/sdk/R$id;->copyright_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_articles_post_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->v:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_articles_comment_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->w:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_articles_like_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->x:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->profile_articles_like_blank:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->v:Landroid/view/View;

    new-instance v5, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;

    invoke-direct {v5, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->w:Landroid/view/View;

    new-instance v5, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$14;

    invoke-direct {v5, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$14;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->x:Landroid/view/View;

    new-instance v5, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$15;

    invoke-direct {v5, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$15;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    sget v5, Lcom/naver/glink/android/sdk/R$id;->icon_post_go:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/naver/glink/android/sdk/configure/d;->d(Landroid/view/View;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    sget v5, Lcom/naver/glink/android/sdk/R$id;->icon_comment_go:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/naver/glink/android/sdk/configure/d;->d(Landroid/view/View;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    sget v5, Lcom/naver/glink/android/sdk/R$id;->icon_like_go:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/naver/glink/android/sdk/configure/d;->d(Landroid/view/View;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->y:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->written_comment_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->z:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->like_article_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->setViewScale(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$16;

    invoke-direct {v5, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$16;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-static {v0, v5}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->x:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_5
    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    sget v0, Lcom/naver/glink/android/sdk/R$id;->copyright:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$12;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$12;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const-string/jumbo v5, "https://ssl.pstatic.net/static/m/cafe/plug/default/with_n_plug_a2.png"

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->o:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Z)V

    :cond_0
    return-void
.end method
