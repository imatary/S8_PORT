.class Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;
.super Landroid/os/Handler;
.source "PstnPhoneCapabilitiesNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;->this$0:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;->this$0:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-static {v1, v0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->-wrap0(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
