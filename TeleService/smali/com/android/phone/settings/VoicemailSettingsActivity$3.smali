.class Lcom/android/phone/settings/VoicemailSettingsActivity$3;
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

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get4(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get5(Lcom/android/phone/settings/VoicemailSettingsActivity;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get2(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap0(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z

    move-result v2

    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    const/16 v3, 0x25b

    invoke-static {v2, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap3(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap6(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-set2(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-get1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
