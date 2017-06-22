.class public Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;
.super Ljava/lang/Object;
.source "SpenEngineUtil.java"


# static fields
.field public static final ACTION_PEN_DOWN:I = 0xd3

.field public static final ACTION_PEN_MOVE:I = 0xd5

.field public static final ACTION_PEN_UP:I = 0xd4

.field private static final PEN_HOVERING:Ljava/lang/String; = "pen_hovering"

.field private static final PEN_HOVERING_LINK_PREVIEW:Ljava/lang/String; = "pen_hovering_link_preview"

.field private static final USER_CURRENT_OR_SELF:I = -0x3

.field private static hermesManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static systemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->systemClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExtendRectFromRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static MakeNewExtendRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static absoluteCoordinate(Landroid/graphics/Rect;FFFFFFF)V
    .locals 1

    div-float v0, p1, p7

    add-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    div-float v0, p3, p7

    add-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    div-float v0, p2, p7

    add-float/2addr v0, p6

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    div-float v0, p4, p7

    add-float/2addr v0, p6

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, p4

    add-float/2addr v0, p3

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, p4

    add-float/2addr v0, p3

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static checkMDMCameraLock(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v6, "persist.sys.camera_lock"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v5, "camera_lock.enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static dismissHermes(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    if-nez v5, :cond_0

    :try_start_0
    const-string v5, "com.samsung.android.hermes.HermesServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    :try_start_1
    sget-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    const-string v6, "dismissHermes"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_4

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public static getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public static isCameraInUse()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_2
    throw v2
.end method

.method public static isLinkPreviewEnabled(Landroid/content/Context;I)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->systemClass:Ljava/lang/Class;

    if-nez v5, :cond_0

    :try_start_0
    const-string v5, "android.provider.Settings$System"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->systemClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    move v4, v1

    :goto_1
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :pswitch_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_link_preview"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_1
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    :goto_3
    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static joinRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public static printRect(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printRect(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static showHermes(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v7, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "com.samsung.android.hermes.HermesServiceManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-array v4, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v9

    :try_start_1
    sget-object v7, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v3, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    sget-object v7, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->hermesManagerClass:Ljava/lang/Class;

    const-string v8, "showHermes"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
