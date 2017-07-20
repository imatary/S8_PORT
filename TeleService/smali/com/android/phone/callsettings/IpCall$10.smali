.class Lcom/android/phone/callsettings/IpCall$10;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->-set14(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->-get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-set16(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->-set17(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->editDialog()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$10;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->deleteDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
