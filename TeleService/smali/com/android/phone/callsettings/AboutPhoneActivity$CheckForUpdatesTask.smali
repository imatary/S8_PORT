.class Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;
.super Landroid/os/AsyncTask;
.source "AboutPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AboutPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckForUpdatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/phone/callsettings/AboutPhoneActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AboutPhoneActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    const-string/jumbo v1, "AboutPhoneActivity"

    const-string/jumbo v2, "[CheckForUpdatesTask] - doInBackground"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AboutPhoneActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->-get0(Lcom/android/phone/callsettings/AboutPhoneActivity;)Lcom/android/phone/CheckForUpdates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CheckForUpdates;->checkForInSettings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AboutPhoneActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->-wrap0(Lcom/android/phone/callsettings/AboutPhoneActivity;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
