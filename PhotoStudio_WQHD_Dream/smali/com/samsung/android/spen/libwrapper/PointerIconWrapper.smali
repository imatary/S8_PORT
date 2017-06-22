.class public Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
.super Ljava/lang/Object;
.source "PointerIconWrapper.java"


# static fields
.field public static final HOVERING_SPENICON_CURSOR:I

.field public static final HOVERING_SPENICON_CUSTOM:I

.field public static final HOVERING_SPENICON_DEFAULT:I

.field public static final HOVERING_SPENICON_MORE:I


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    const/16 v0, 0x4e21

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    const/16 v0, 0x4e22

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CURSOR:I

    const/16 v0, 0x4e2a

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_MORE:I

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CURSOR:I

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_MORE:I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/PointerIconInterface;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    new-instance v2, Lcom/samsung/android/spen/libse/SePointerIcon;

    invoke-direct {v2}, Lcom/samsung/android/spen/libse/SePointerIcon;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;-><init>(Lcom/samsung/android/spen/libinterface/PointerIconInterface;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SE"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    new-instance v2, Lcom/samsung/android/spen/libsdl/SdlPointerIcon;

    invoke-direct {v2}, Lcom/samsung/android/spen/libsdl/SdlPointerIcon;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;-><init>(Lcom/samsung/android/spen/libinterface/PointerIconInterface;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SDL"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public isPointerIconSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/PointerIconInterface;->isPointerIconSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public removeHoveringSpenCustomIcon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/PointerIconInterface;->removeHoveringSpenCustomIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/spen/libinterface/PointerIconInterface;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->instance:Lcom/samsung/android/spen/libinterface/PointerIconInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/spen/libinterface/PointerIconInterface;->setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
