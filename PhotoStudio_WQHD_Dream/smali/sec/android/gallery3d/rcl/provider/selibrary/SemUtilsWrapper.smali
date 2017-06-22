.class public Lsec/android/gallery3d/rcl/provider/selibrary/SemUtilsWrapper;
.super Ljava/lang/Object;
.source "SemUtilsWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    return v0
.end method

.method public isUltraSavingMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setEnableFluidScroll(Landroid/widget/GridView;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->semSetFastScrollCustomEffectEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public setEnableGoToTop(Landroid/widget/GridView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->semSetGoToTopEnabled(Z)V

    return-void
.end method
