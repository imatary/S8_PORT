.class public Lcom/naver/glink/android/sdk/ui/MenusFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;,
        Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/MenusFragmentView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/ListView;

.field private c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 17

    sget v2, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img_dimmed:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v3, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v3, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img_stroke:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/naver/glink/android/sdk/R$id;->cafe_name:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/naver/glink/android/sdk/R$id;->cafe_member_count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/naver/glink/android/sdk/R$id;->channels_button:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/naver/glink/android/sdk/R$id;->menu_link_layout:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v8, Lcom/naver/glink/android/sdk/R$id;->menu_link_text:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v10}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v14

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v15

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x2a

    :goto_0
    invoke-virtual {v15, v10}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v14, v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v15

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x3c

    :goto_1
    invoke-virtual {v15, v10}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v10

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v15}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v14, v10, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v10

    const/4 v14, -0x1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x58

    :goto_2
    invoke-virtual {v10, v2, v14, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v10

    const/4 v14, -0x1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x58

    :goto_3
    invoke-virtual {v10, v11, v14, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v9

    const/16 v10, 0x40

    const/16 v11, 0x40

    invoke-virtual {v9, v12, v10, v11}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v9

    const/16 v10, 0x3e

    const/16 v11, 0x3e

    invoke-virtual {v9, v3, v10, v11}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v9

    const/16 v10, 0x40

    const/16 v11, 0x40

    invoke-virtual {v9, v4, v10, v11}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    new-instance v4, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/widget/ImageView;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    sget v9, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_cafeprofile_none:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->topCoverImageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$color;->white1:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/naver/glink/android/sdk/R$string;->member_count_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->memberCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3, v4}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :goto_6
    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v10, 0x3c

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x4c

    goto/16 :goto_1

    :cond_2
    const/16 v9, 0x68

    goto/16 :goto_2

    :cond_3
    const/16 v9, 0x68

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->topCoverImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_5

    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$Channel;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$Channel;->getLangCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/api/Responses$Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$Channel;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->e()V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->l()V

    return-void
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a:I

    return v0
.end method

.method private e()V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private l()V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_menus:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x106000d

    const/high16 v4, 0x41200000    # 10.0f

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->menus_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->a:Ljava/lang/String;

    const-string/jumbo v1, "CHANNELS_DIALOG_TAG"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public setClickedMenuId(I)V
    .locals 1

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c:Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
