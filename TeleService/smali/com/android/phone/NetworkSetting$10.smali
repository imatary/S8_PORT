.class Lcom/android/phone/NetworkSetting$10;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1, v6}, Lcom/android/phone/NetworkSetting;->-wrap15(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v1, "VAU"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "XSA"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1, v6}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-get25(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VAU"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "XSA"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-wrap12(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, -0x2713

    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$10;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1, v0}, Lcom/android/phone/NetworkSetting;->-wrap4(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
