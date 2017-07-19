.class Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleImplJellybeanMR2"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    const v1, 0x10102ce

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0
.end method
