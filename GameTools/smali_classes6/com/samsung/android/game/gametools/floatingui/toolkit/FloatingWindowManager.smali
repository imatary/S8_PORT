.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;
.super Ljava/lang/Object;
.source "FloatingWindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# static fields
.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;


# instance fields
.field private iTLogging:Z

.field private mAddedViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->iTLogging:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;
    .locals 2

    const-class v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    iput-object p0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logViewArray()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->iTLogging:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "----------------------------------------------------------------------------  FloatingWindowManager Log Start"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FloatingWindowManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FloatingWindowManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "----------------------------------------------------------------------------  FloatingWindowManager Log End"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;II)V
    .locals 6

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;IILjava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public declared-synchronized addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FloatingWindowManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->logViewArray()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public declared-synchronized removeAllView()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "FloatingWindowManager removeAllView start"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FloatingWindowManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FloatingWindowManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Already Removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    const-string/jumbo v3, "FloatingWindowManager removeAllView end"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeView(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FloatingWindowManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->logViewArray()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FloatingWindowManager No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in mAddedViewList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "FloatingWindowManager view not founded on removeView"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public removeView(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized searchView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->mAddedViewList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
