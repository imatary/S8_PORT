.class Lcom/android/phone/ims/IMSConferenceCallActivity$5;
.super Landroid/content/AsyncQueryHandler;
.source "IMSConferenceCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->getInitialListFromIntentbyGroupID(Landroid/content/Intent;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

.field final synthetic val$participantsList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iput-object p3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->val$participantsList:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const-string/jumbo v2, "onQueryComplete "

    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap4(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap3(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->val$participantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->val$participantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->val$participantsList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap0(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete same number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap3(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;->val$participantsList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap0(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v1
.end method
