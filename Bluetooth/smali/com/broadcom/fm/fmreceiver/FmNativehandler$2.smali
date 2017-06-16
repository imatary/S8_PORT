.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$2;
.super Landroid/content/BroadcastReceiver;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/FmNativehandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;


# direct methods
.method constructor <init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$2;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FmNativehandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
