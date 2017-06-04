.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;
.super Ljava/lang/Object;
.source "RecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentAppInfo"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mPackageName:Ljava/lang/String;

.field private mTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->init(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ActivityManager$RecentTaskInfo;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getIcon()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->mTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
