.class public Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;
.super Landroid/widget/RelativeLayout;
.source "CafeInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;)Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->b:Z

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_cafe_info:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/widget/Button;)V

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 15

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->b:Z

    if-nez v1, :cond_0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v2, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img_stroke:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->cafe_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/naver/glink/android/sdk/R$id;->cafe_info:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/naver/glink/android/sdk/R$id;->join_cafe:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/naver/glink/android/sdk/R$id;->profile_cafe_information:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/naver/glink/android/sdk/R$id;->menu_link_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v8, Lcom/naver/glink/android/sdk/R$id;->menu_link_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v12

    const/16 v13, 0x40

    const/16 v14, 0x40

    invoke-virtual {v12, v10, v13, v14}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v10

    const/16 v12, 0x3e

    const/16 v13, 0x3e

    invoke-virtual {v10, v2, v12, v13}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v10

    const/16 v12, 0x40

    const/16 v13, 0x40

    invoke-virtual {v10, v3, v12, v13}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$2;

    invoke-direct {v3, p0, v2}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;Landroid/widget/ImageView;)V

    iget-object v2, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    sget v10, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_cafeprofile_none:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    iget-object v2, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->fullCoverImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v2, Lcom/naver/glink/android/sdk/R$color;->green1:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_2
    iget-object v1, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->desc:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVerticalFadingEdgeEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setScroller(Landroid/widget/Scroller;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/naver/glink/android/sdk/R$string;->join_plug:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/naver/glink/android/sdk/R$string;->profile_plug_information:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$3;

    invoke-direct {v1, p0, v9}, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v10, v9, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    :cond_5
    sget v1, Lcom/naver/glink/android/sdk/R$string;->join_cafe:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget v1, Lcom/naver/glink/android/sdk/R$string;->profile_cafe_information:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->b:Z

    return v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->b:Z

    return-void
.end method

.method public setOnCafeInfoListener(Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeInfoView$a;

    return-void
.end method
