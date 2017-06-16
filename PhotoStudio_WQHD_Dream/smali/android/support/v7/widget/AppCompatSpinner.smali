.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

.field private mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

.field private mTintManager:Landroid/support/v7/internal/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v3, Landroid/support/v7/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v7/widget/AppCompatSpinner;->TINT_ATTRS:[I

    invoke-static {v3, p2, v4, p3, v5}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v5, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    :cond_2
    return-void

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    invoke-static {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Landroid/support/v7/internal/widget/TintInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Landroid/support/v7/internal/widget/TintInfo;)V

    goto :goto_0
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/TintInfo;->mHasTintList:Z

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->applySupportBackgroundTint()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mInternalBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    goto :goto_0
.end method

.method private static setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    :try_start_0
    const-class v3, Landroid/widget/Spinner;

    const-string v4, "mPopup"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->applySupportBackgroundTint()V

    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/TintInfo;->mHasTintList:Z

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->applySupportBackgroundTint()V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTint:Landroid/support/v7/internal/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/TintInfo;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->applySupportBackgroundTint()V

    return-void
.end method
