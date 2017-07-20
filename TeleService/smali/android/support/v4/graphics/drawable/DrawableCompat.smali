.class public final Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method
