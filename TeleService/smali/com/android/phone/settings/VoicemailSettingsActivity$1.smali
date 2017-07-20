.class Lcom/android/phone/settings/VoicemailSettingsActivity$1;
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

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$1;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity$1;->this$0:Lcom/android/phone/settings/VoicemailSettingsActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->-wrap4(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
