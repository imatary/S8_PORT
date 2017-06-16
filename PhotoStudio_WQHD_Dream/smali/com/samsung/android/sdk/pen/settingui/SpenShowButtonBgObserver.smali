.class Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;
.super Landroid/database/ContentObserver;
.source "SpenShowButtonBgObserver.java"


# static fields
.field private static final mSdkVersion:I


# instance fields
.field private SHOW_BTN_BG:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mOffColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mSdkVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mSdkVersion:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImagePathList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOnColorList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOffColorList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "show_button_background"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addButtonBackground(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOnColorList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOffColorList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->setButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOnColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOffColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImagePathList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOnColorList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOffColorList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mContentResolver:Landroid/content/ContentResolver;

    :cond_1
    return-void
.end method

.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOnColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mOffColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->setButtonBackground(Landroid/view/View;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setButtonBackground(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mSdkVersion:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->SHOW_BTN_BG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenShowButtonBgObserver;->mImageUtil:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
