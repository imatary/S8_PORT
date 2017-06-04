.class public Lcom/sec/android/gallery3d/app/HdmiManager;
.super Ljava/lang/Object;
.source "HdmiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;,
        Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;
    }
.end annotation


# static fields
.field private static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final MSG_HDMI_CONNECTED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HdmiManager"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHdmiReceiver:Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private sIsPlugged:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/app/HdmiManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/HdmiManager$1;-><init>(Lcom/sec/android/gallery3d/app/HdmiManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/app/HdmiManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/HdmiManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addHdmiConnectListener(Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerHdmiReceiver(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;-><init>(Lcom/sec/android/gallery3d/app/HdmiManager;Lcom/sec/android/gallery3d/app/HdmiManager$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mHdmiReceiver:Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mHdmiReceiver:Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeHdmiConnectListener(Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterHdmiReceiver(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->mHdmiReceiver:Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HdmiManager"

    const-string/jumbo v2, "HdmiManager.registerHdmiReceiver() was not called."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "HdmiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
