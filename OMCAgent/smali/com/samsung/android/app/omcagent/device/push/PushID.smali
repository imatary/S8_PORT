.class public Lcom/samsung/android/app/omcagent/device/push/PushID;
.super Ljava/lang/Object;
.source "PushID.java"


# static fields
.field public static final MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final MODE_SPP:Ljava/lang/String; = "SPP"

.field public static instance:Lcom/samsung/android/app/omcagent/device/push/PushID;


# instance fields
.field protected resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushID;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushID;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/PushID;->instance:Lcom/samsung/android/app/omcagent/device/push/PushID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushID;->resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;

    return-void
.end method


# virtual methods
.method public getPushReceiver()Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushID;->resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;

    return-object v0
.end method

.method public sendGCMResult(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushID$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/device/push/PushID$1;-><init>(Lcom/samsung/android/app/omcagent/device/push/PushID;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setPushReceiver(Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushID;->resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;

    return-void
.end method
