.class public Lcom/samsung/android/game/gametools/setting/SettingFocusManager;
.super Ljava/lang/Object;
.source "SettingFocusManager.java"


# static fields
.field private static mInstance:Lcom/samsung/android/game/gametools/setting/SettingFocusManager;


# instance fields
.field private mFocusIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mFocusIDMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/game/gametools/setting/SettingFocusManager;
    .locals 2

    const-class v1, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mInstance:Lcom/samsung/android/game/gametools/setting/SettingFocusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;-><init>()V

    sput-object v0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mInstance:Lcom/samsung/android/game/gametools/setting/SettingFocusManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mInstance:Lcom/samsung/android/game/gametools/setting/SettingFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mFocusIDMap:Ljava/util/HashMap;

    return-void
.end method

.method public loadFocusedResourceId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mFocusIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mFocusIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveFocus(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/SettingFocusManager;->mFocusIDMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
