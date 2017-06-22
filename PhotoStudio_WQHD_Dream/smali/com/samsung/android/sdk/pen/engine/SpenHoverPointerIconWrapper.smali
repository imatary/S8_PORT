.class Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;
.super Landroid/os/Handler;
.source "SpenHoverPointerIconWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;
    }
.end annotation


# static fields
.field public static final HOVERING_SPENICON_CURSOR:I

.field public static final HOVERING_SPENICON_CUSTOM:I

.field public static final HOVERING_SPENICON_DEFAULT:I

.field public static final HOVERING_SPENICON_MORE:I

.field private static mIconType:I


# instance fields
.field private final SET_UPDATE_DELAY:I

.field private mContext:Landroid/content/Context;

.field private mHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoverPoint:Landroid/graphics/Point;

.field private mIsSpenIconMore:Z

.field private mIsUpdated:Z

.field private mPenColor:I

.field private mPenName:Ljava/lang/String;

.field private mPenSize:F

.field private mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

.field private mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

.field private mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    sget v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    sget v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_CURSOR:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_CURSOR:I

    sget v0, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_MORE:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_MORE:I

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIconType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsSpenIconMore:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    const/16 v3, 0x1e

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->SET_UPDATE_DELAY:I

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$1;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z

    return p1
.end method

.method private createPointDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenColor:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenSize:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenToolTip;->getDrawableImage(Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static getIconType()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIconType:I

    return v0
.end method


# virtual methods
.method public getPointerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->createPointDrawable()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->removeHoveringIcon()Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon()V

    goto :goto_0
.end method

.method public removeHoveringIcon()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z

    :try_start_0
    sget v2, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->removeHoveringSpenCustomIcon()V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsSpenIconMore:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->getIconType()I

    move-result v0

    sget v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_MORE:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_MORE:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->getIconType()I

    move-result v0

    sget v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_MORE:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    goto :goto_0
.end method

.method public setCustomHoveringSpenIcon()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->createPointDrawable()V

    :cond_2
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    sput v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIconType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_CUSTOM:I

    sput v1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIconType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHoveringSpenIcon(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sput p1, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIconType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setPenHoverPoint(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->sendEmptyMessageDelayed(IJ)Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    const/16 v1, 0x32

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    const/16 v1, 0x32

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    const/16 v1, 0x32

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverPoint:Landroid/graphics/Point;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setPointerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setPointerDrawable(Lcom/samsung/android/sdk/pen/engine/SpenToolTip;Ljava/lang/String;IF)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mHoverDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mToolTip:Lcom/samsung/android/sdk/pen/engine/SpenToolTip;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenColor:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPenSize:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mSetUpdateHander:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setSpenIconMore(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsSpenIconMore:Z

    invoke-virtual {p0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
