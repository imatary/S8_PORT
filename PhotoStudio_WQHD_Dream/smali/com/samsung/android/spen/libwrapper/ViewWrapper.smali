.class public Lcom/samsung/android/spen/libwrapper/ViewWrapper;
.super Ljava/lang/Object;
.source "ViewWrapper.java"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

.field private isSetIconNotSupportedPlatform:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    iput-boolean v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z
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

.method public static create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;
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
    new-instance v1, Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    new-instance v2, Lcom/samsung/android/spen/libse/SeView;

    invoke-direct {v2, p1}, Lcom/samsung/android/spen/libse/SeView;-><init>(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;-><init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
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
    new-instance v1, Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    new-instance v2, Lcom/samsung/android/spen/libsdl/SdlView;

    invoke-direct {v2, p1}, Lcom/samsung/android/spen/libsdl/SdlView;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;-><init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
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
.method public getHoverPopupWindow()Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;

    iget-object v2, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v2}, Lcom/samsung/android/spen/libinterface/ViewInterface;->getHoverPopupWindow()Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;-><init>(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

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

.method public setHoverPopupType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setHoverPopupType(I)V
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

.method public setPointerIcon(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setPointerIcon(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
