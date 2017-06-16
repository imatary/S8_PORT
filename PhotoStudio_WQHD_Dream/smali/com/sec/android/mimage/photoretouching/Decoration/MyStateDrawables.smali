.class Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;
.super Landroid/graphics/drawable/StateListDrawable;
.source "MyStateDrawables.java"


# instance fields
.field UltraPowermodeBg:Landroid/graphics/drawable/RippleDrawable;

.field background:Landroid/graphics/drawable/Drawable;

.field private final colorControlActivated:I

.field mContext:Landroid/content/Context;

.field normalBG:Landroid/graphics/drawable/Drawable;

.field normalBGUP:Landroid/graphics/drawable/RippleDrawable;

.field rippleBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const v8, 0x10100a1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->colorControlActivated:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020745

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->background:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02025c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->rippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020741

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBG:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02073c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBGUP:Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020748

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->UltraPowermodeBg:Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBGUP:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->UltraPowermodeBg:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v6, [I

    aput v8, v3, v7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->colorControlActivated:I

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020749

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBGUP:Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020747

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->UltraPowermodeBg:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBGUP:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    new-array v3, v6, [I

    aput v8, v3, v7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->UltraPowermodeBg:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->normalBGUP:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method protected onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    const v4, 0x10100a1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;->clearColorFilter()V

    goto :goto_1
.end method
