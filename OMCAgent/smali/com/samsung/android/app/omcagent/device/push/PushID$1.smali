.class Lcom/samsung/android/app/omcagent/device/push/PushID$1;
.super Landroid/os/AsyncTask;
.source "PushID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/device/push/PushID;->sendGCMResult(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/omcagent/device/push/PushIDResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/device/push/PushID;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/device/push/PushID;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushID$1;->this$0:Lcom/samsung/android/app/omcagent/device/push/PushID;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/samsung/android/app/omcagent/device/push/PushIDResult;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/device/push/GCM;->instance:Lcom/samsung/android/app/omcagent/device/push/GCM;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/device/push/GCM;->getRegistrationIDByBackground(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/device/push/PushID$1;->doInBackground([Landroid/content/Context;)Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/app/omcagent/device/push/PushIDResult;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushID$1;->this$0:Lcom/samsung/android/app/omcagent/device/push/PushID;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/device/push/PushID;->resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushID$1;->this$0:Lcom/samsung/android/app/omcagent/device/push/PushID;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/device/push/PushID;->resultReceiver:Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;->onPushResponse(Lcom/samsung/android/app/omcagent/device/push/PushIDResult;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/device/push/PushID$1;->onPostExecute(Lcom/samsung/android/app/omcagent/device/push/PushIDResult;)V

    return-void
.end method
