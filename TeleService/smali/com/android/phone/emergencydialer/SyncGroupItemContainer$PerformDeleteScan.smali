.class public Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;
.super Landroid/os/AsyncTask;
.source "SyncGroupItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformDeleteScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method public constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "EmergencySyncGroupItemContainer"

    const-string/jumbo v4, "[PerformDeleteScan] Eemrgency contact delete start ....."

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v5, v5, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->updateDBOrder()V

    const-string/jumbo v3, "EmergencySyncGroupItemContainer"

    const-string/jumbo v4, "[PerformDeleteScan] Eemergency contact delete end ....."

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->performDBDeleteDone(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
