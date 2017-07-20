.class Lcom/android/phone/settings/VoicemailSettingsActivity$2;
.super Landroid/os/Handler;
.source "VoicemailSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/VoicemailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/16 v5, 0x259

    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap3(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap5(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-set2(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap2(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-set1(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get3(Lcom/android/phone/settings/VoicemailSettingsActivity;)Lcom/android/phone/SubscriptionInfoHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->refreshMwiIndicator(I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in setting fwd# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap0(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap7(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-set0(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Rollback will be required"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-set0(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z

    :cond_6
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get2(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "No rollback needed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
