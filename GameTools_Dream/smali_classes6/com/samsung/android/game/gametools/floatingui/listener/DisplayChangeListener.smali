.class public Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;
.super Ljava/lang/Object;
.source "DisplayChangeListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

.field private mDreamToolsMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDreamToolsMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 13

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDisplayChanged  id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "######################################################"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onDisplayChanged - loadDisplayInfo"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mContext:Landroid/content/Context;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v8}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->getRotation()I

    move-result v8

    if-eq v8, v7, :cond_0

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDreamToolsMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-virtual {v8}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDreamToolsMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->hide(ZJLjava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "######################################################"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget v9, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setWidth(I)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setHeight(I)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v8, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDensity(F)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v8, v7}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setRotation(I)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v8, v3}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDisplayID(I)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v8, v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->setDensityDPI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
