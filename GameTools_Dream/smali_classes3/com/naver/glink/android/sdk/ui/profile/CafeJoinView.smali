.class public Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;
.super Landroid/widget/RelativeLayout;
.source "CafeJoinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "http://cafe.naver.com/common/cafein_service.htm"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/view/View;

.field private i:Lcom/naver/glink/android/sdk/ui/profile/a;

.field private j:Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

.field private k:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->j:Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    return-object p1
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/a;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/a;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a$a;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->i:Lcom/naver/glink/android/sdk/ui/profile/a;

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->i:Lcom/naver/glink/android/sdk/ui/profile/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x14

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_cafe_join:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->valid_check_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->nickname:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/profile/a;->a()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->nickname_deletion:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->h:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->h:Landroid/view/View;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->agree_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->agree_check:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->g:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v3, v3}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->agree_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->e:Landroid/widget/TextView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->join:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->j:Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->k:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Z)V
    .locals 11

    const/16 v10, 0x3e

    const/16 v9, 0x40

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v1, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img_stroke:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/naver/glink/android/sdk/R$id;->cafe_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->cafe_info:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/naver/glink/android/sdk/R$id;->cafe_url:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v7, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v8

    invoke-virtual {v8, v6, v9, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v6

    invoke-virtual {v6, v1, v10, v10}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$6;

    invoke-direct {v2, p0, v1, p4}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$6;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Landroid/widget/ImageView;Z)V

    iget-object v1, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v6, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_cafeprofile_none:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    iget-object v1, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->fullCoverImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v1, Lcom/naver/glink/android/sdk/R$color;->green1:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->desc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    iget-object v0, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$7;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v6, p3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a()V

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isAgreeTermsError()Z

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$4;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$5;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/a/p;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/a/p;-><init>()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/a/p;->a(Ljava/lang/String;I)Lcom/naver/glink/android/sdk/a/p;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/a/p;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->i:Lcom/naver/glink/android/sdk/ui/profile/a;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->k:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->j:Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    return-void
.end method

.method public setCafeJoinListener(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->k:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    return-void
.end method
