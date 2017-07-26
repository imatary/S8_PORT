.class public Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;
.super Landroid/widget/LinearLayout;
.source "OAuthLoginLayoutNaverAppDownloadBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginLayoutNaverAppDownloadBanner"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDensityDpi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->initData(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->initData(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$0(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->downloadNaverApp()V

    return-void
.end method

.method private downloadNaverApp()V
    .locals 3

    const-string/jumbo v2, "market://details?id=com.nhn.android.search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getCloseBtnLayout()Landroid/widget/RelativeLayout;
    .locals 10

    new-instance v0, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->getDrawableCloseImg(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xa

    int-to-double v8, v3

    invoke-direct {p0, v8, v9}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->pxFromDp(D)I

    move-result v4

    const/4 v5, -0x1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_0

    const/4 v5, -0x1

    :cond_0
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xb

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$3;

    invoke-direct {v7, p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$3;-><init>(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private getLayoutDownloadDesc()Landroid/widget/LinearLayout;
    .locals 12

    const/16 v11, 0x33

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    int-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->pxFromDp(D)I

    move-result v3

    invoke-virtual {v0, v3, v3, v8, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-direct {p0, v6, v7}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->pxFromDp(D)I

    move-result v1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8, v1, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_desc:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getTextSizeUpper()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8, v8, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_naverapp_download_link:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x2d

    const/16 v7, 0xb4

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getTextSizeUnder()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$2;

    invoke-direct {v6, p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$2;-><init>(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getNaverIconView()Landroid/widget/ImageView;
    .locals 7

    const/4 v6, -0x2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->getDrawableNaverIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xa

    int-to-double v4, v1

    invoke-direct {p0, v4, v5}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->pxFromDp(D)I

    move-result v2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$1;

    invoke-direct {v4, p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner$1;-><init>(Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method private getTextSizeUnder()F
    .locals 1

    iget v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensityDpi:I

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isXhdpi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensityDpi:I

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isHdpi(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_0

    :cond_1
    const v0, 0x41226666    # 10.15f

    goto :goto_0
.end method

.method private getTextSizeUpper()F
    .locals 1

    iget v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensityDpi:I

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isXhdpi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensityDpi:I

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/DeviceDisplayInfo;->isHdpi(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41500000    # 13.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensity:F

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensityDpi:I

    return-void
.end method

.method private initView(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v1, -0x1

    const/4 v0, -0x2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    const/4 v1, -0x1

    :cond_0
    const/16 v2, 0xfe

    const/16 v3, 0xfc

    const/16 v4, 0xe3

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->setBackgroundColor(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getNaverIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getLayoutDownloadDesc()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getCloseBtnLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->addView(Landroid/view/View;)V

    return-void
.end method

.method private pxFromDp(D)I
    .locals 5

    iget v1, p0, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->mDensity:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v0, v2

    return v0
.end method
