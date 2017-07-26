.class public Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public volatile mDensity:F

.field public volatile mDensityDPI:I

.field public volatile mDisplayID:I

.field public volatile mHeight:I

.field public volatile mRotation:I

.field public volatile mWidth:I


# direct methods
.method public constructor <init>(IIIFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mWidth:I

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mHeight:I

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mRotation:I

    iput p4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensity:F

    iput p5, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDisplayID:I

    iput p6, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensityDPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensity:F

    return v0
.end method

.method public getDensityDPI()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensityDPI:I

    return v0
.end method

.method public getDisplayID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDisplayID:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mHeight:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mWidth:I

    return v0
.end method

.method public set()V
    .locals 11

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "######################################################"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "loadDisplayInfo"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PX : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ROTATION : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DISPLAY ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DENSITY : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DENSITY DPI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "######################################################"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "loadDisplayInfo : refresh displayInfo"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setWidth(I)V

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setHeight(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDensity(F)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setRotation(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDisplayID(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDensityDPI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensity:F

    return-void
.end method

.method public setDensityDPI(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensityDPI:I

    return-void
.end method

.method public setDisplayID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDisplayID:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mHeight:I

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mRotation:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mRotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDensity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDisplayID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDisplayID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDensityDPI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensityDPI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
