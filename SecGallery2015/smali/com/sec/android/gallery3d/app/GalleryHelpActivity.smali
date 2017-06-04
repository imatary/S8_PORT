.class public Lcom/sec/android/gallery3d/app/GalleryHelpActivity;
.super Landroid/app/Activity;
.source "GalleryHelpActivity.java"


# static fields
.field private static final DELETE_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.DELETE_PICTURE"

.field private static final ICON_POINTER_PS:Ljava/lang/String; = "%s"

.field private static final ICON_POINTER_PS_EXCHANGE:Ljava/lang/String; = "\ufffc"

.field private static final SHARING_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.SHARING_PICTURE"

.field private static final USE_US_TEXT_UI:Z

.field private static final VIEWING_ALBUM:Ljava/lang/String; = "com.samsung.gallery.help.VIEWING_ALBUM"

.field private static final VIEWING_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.VIEWING_PICTURE"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mHelpAction:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private final mIsGraceUI:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUSTextUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->USE_US_TEXT_UI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceHelpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mIsGraceUI:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method private applyStringWithIcon(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "%s"

    const-string/jumbo v2, "\ufffc"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "\ufffc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\ufffc"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, p4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100124

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    :goto_0
    return-object p3

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private resetDividerLayout()V
    .locals 7

    const/4 v6, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f12014e

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f120149

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f12014a

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f12014f

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f120150

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resetLayout()V
    .locals 10

    const v9, 0x7f120155

    const v8, 0x7f120153

    const v7, 0x7f0a03d0

    const v6, 0x7f12014d

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpAction:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpAction:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v3, 0x7f04008c

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a022b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->USE_US_TEXT_UI:Z

    if-eqz v3, :cond_0

    const v3, 0x7f12015c

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "com.samsung.gallery.help.VIEWING_PICTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "com.samsung.gallery.help.VIEWING_ALBUM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "com.samsung.gallery.help.SHARING_PICTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "com.samsung.gallery.help.DELETE_PICTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    const v3, 0x7f04008b

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a022a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mIsGraceUI:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    const v3, 0x7f0a04d5

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c2

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->applyStringWithIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2
    const v3, 0x7f04008a

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0229

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->resetDividerLayout()V

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->applyStringWithIcon(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mIsGraceUI:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setHelpImage()V

    :cond_3
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->USE_US_TEXT_UI:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    const v3, 0x7f040086

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->resetDividerLayout()V

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->applyStringWithIcon(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mIsGraceUI:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setHelpImage()V

    :cond_4
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->USE_US_TEXT_UI:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x11546343 -> :sswitch_1
        0x2797a1a -> :sswitch_3
        0x6a41bcc -> :sswitch_0
        0x36afbe8b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setHelpActionBar()V
    .locals 8

    const v7, 0x7f10023c

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mIsGraceUI:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f020047

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setTitleTextColor(Landroid/app/Activity;I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v2, 0x7f10012a

    invoke-static {p0, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setNavigationUpButtonColor(Landroid/app/Activity;I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setHelpImage()V
    .locals 3

    const v2, 0x7f12014b

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f120151

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020152

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f020154

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mHelpAction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->setHelpActionBar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpActivity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
