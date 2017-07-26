.class public Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;
.super Landroid/widget/ImageButton;
.source "OAuthLoginButton.java"


# static fields
.field private static mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;


# instance fields
.field private mBgDrawableResId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Lcom/nhn/android/naverlogin/OAuthLoginHandler;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton$1;

    invoke-direct {v0, p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton$1;-><init>(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;)V

    invoke-virtual {p0, v0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBgType()V
    .locals 13

    const/16 v12, 0x10

    const/4 v10, 0x0

    const/4 v8, -0x1

    iget v9, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    if-eq v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v12, :cond_0

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->getDrawableByteStrLoginBtnImg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_0
    array-length v9, v3

    invoke-static {v3, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    const/16 v5, 0x32

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    int-to-double v8, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v6, v8

    :goto_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v0, v6, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    :try_start_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v12, :cond_4

    invoke-virtual {p0, v1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    array-length v8, v3

    invoke-static {v3, v10, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_3

    int-to-double v8, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v5, v8

    goto :goto_2

    :cond_3
    const/16 v5, 0x50

    int-to-double v8, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_2

    :catch_2
    move-exception v4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBgType()V

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public setBgResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mBgDrawableResId:I

    return-void
.end method

.method public setBgType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->setBgType()V

    return-void
.end method

.method public setOAuthLoginHandler(Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 0

    sput-object p1, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginButton;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    return-void
.end method
